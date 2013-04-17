include /usr/share/prayer/config.make

TEMPLATES = abook_add abook_list abook_lookup abook_search abook_take \
  abook_transfer abook_update action_stub attachments block block_fail \
  compose compose_postponed copy dictionary display display_images \
  display_mime display_tail download_xfer_error error expunge favourites \
  filter filter_fail filter_select folders fullname include list logout \
  logout_raven manage passwd prefs_compose prefs_compose2 prefs_display \
  prefs_folder prefs_general printable printable_tail quota raven_blocked \
  redirect redirect_fail rename reply restart rm roles_entry roles_list \
  roles_select sieve sieve_error sieve_error_tail sieve_fail sizes spam \
  spam_fail spell transfer upload_select vacation vacation_fail vaclog \
  vaclog_fail welcome

TEMPLATES_FRONTEND = login frontend_compose_timeout frontend_login_error \
  frontend_security frontend_session frontend_timeout

ifndef NAME
NAME = ppc
endif

CPPFLAGS = -I/usr/include/prayer
# Hack to get i686 builds for Marngoneet
CFLAGS += -fPIC
#CFLAGS += -fPIC -march=i686 -m32
#LDFLAGS_TEMPLATELIB = -shared -fPIC -march=i686 -m32 \ 
LDFLAGS_TEMPLATELIB = -shared -fPIC \
	-Wl,--defsym=template_map=template_map_$(NAME) \
	-Wl,--defsym=template_map_count=template_map_$(NAME)_count

EXPAND  = $(LIB_PREFIX)/template_expand
COMPILE = $(LIB_PREFIX)/template_compile
MKINDEX = $(LIB_PREFIX)/build_index.pl
MKDEPS  = $(LIB_PREFIX)/makedeps.pl

SESSION_LIB    = $(NAME)$(SHLIBEXT)
FRONTEND_LIB   = $(NAME)_frontend$(SHLIBEXT)
TEMPLATE_LIBS ?= $(SESSION_LIB) $(FRONTEND_LIB)
TARGETS       ?= $(TEMPLATE_LIBS)

VARS=$(filter-out common.vars,$(wildcard *.vars))
HTML=$(VARS:.vars=.html)

all: $(TARGETS)

$(TEMPLATE_LIBS):
	$(CC) $(LDFLAGS) $(LDFLAGS_TEMPLATELIB) -o $@ $^

_template_index.c _template_index_frontend.c:
	$(MKINDEX) $(NAME) $(^F) > $@

%.c: %.t
	$(COMPILE) $(NAME) $@ $(basename $<)

install-sources:
	$(INSTALL) -o $(RO_USER) -g $(RO_GROUP) -m $(PUBLIC_DIR) \
	  -d $(DESTDIR)$(PREFIX)/templates/$(NAME)
	$(INSTALL) -o $(RO_USER) -g $(RO_GROUP) -m $(PUBLIC_FILE) \
	  *.t *.vars $(DESTDIR)$(PREFIX)/templates/$(NAME)

install-libs: $(TEMPLATE_LIBS)
	$(INSTALL) -o $(RO_USER) -g $(RO_GROUP) -m $(PUBLIC_DIR) \
	  -d $(DESTDIR)$(LIB_PREFIX)/templates
	$(INSTALL) -o $(RO_USER) -g $(RO_GROUP) -m $(PUBLIC_FILE) \
	  $(TEMPLATE_LIBS) $(DESTDIR)$(LIB_PREFIX)/templates/

clean:
	rm -f $(TARGETS) *.html *.o *.c
distclean: clean
	rm -f *.d

test: $(HTML)

%.html: %.t %.vars common.vars
	$(EXPAND) $@ $* common.vars $*.vars

%_frontend.d: FRONTEND_FLAG = --frontend
%_frontend.d: TEMPLATES = $(TEMPLATES_FRONTEND)
export VPATH
$(TEMPLATE_LIBS:$(SHLIBEXT)=.d):
	$(MKDEPS) $(FRONTEND_FLAG) $(NAME) $(TEMPLATES) > $@
	sed -ri 's/^(_template_index[^:]*)/\1 $@/' $@

include $(TEMPLATE_LIBS:$(SHLIBEXT)=.d)

.PHONY: all install-sources install-libs clean distclean test
.DELETE_ON_ERROR:
