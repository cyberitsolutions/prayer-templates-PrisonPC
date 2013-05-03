include /usr/share/prayer/config.make

# TEMPLATES = abook_add abook_list abook_lookup abook_search abook_take \
#   abook_transfer abook_update action_stub attachments block block_fail \
#   compose compose_postponed copy dictionary display display_images \
#   display_mime display_tail download_xfer_error error expunge favourites \
#   filter filter_fail filter_select folders fullname include list logout \
#   logout_raven manage passwd prefs_compose prefs_compose2 prefs_display \
#   prefs_folder prefs_general printable printable_tail quota raven_blocked \
#   redirect redirect_fail rename reply restart rm roles_entry roles_list \
#   roles_select sieve sieve_error sieve_error_tail sieve_fail sizes spam \
#   spam_fail spell transfer upload_select vacation vacation_fail vaclog \
#   vaclog_fail welcome

TEMPLATES = abook_add abook_add_help abook_list abook_list_help \
abook_list_nav_1 abook_list_nav_1_icons abook_list_nav_1_noicons \
abook_list_nav_2 abook_list_search abook_list_title abook_list_toolbar_bottom \
abook_list_toolbar_top abook_lookup abook_lookup_help abook_lookup_nav_1 \
abook_lookup_nav_1_icons abook_lookup_nav_1_noicons abook_lookup_search \
abook_search abook_search_help abook_take abook_take_help abook_transfer \
abook_transfer_help abook_update abook_update_help action_stub attachments \
attachments_help block block_fail block_help compose compose_large_help \
compose_large_top compose_postponed compose_postponed_help compose_small_help \
compose_small_top compose_toolbar compose_toolbar_left compose_toolbar_right \
container_end container_start copy copy_help copy_toolbar dictionary \
dictionary_help display display_addr display_hdrs display_help display_images \
display_mime display_mime_msg display_mime_other display_mime_text display_tail \
display_toolbar display_toolbar_icons display_toolbar_noicons \
download_xfer_error error expunge favlist favlist_favourites favourites \
favourites_help favourites_toolbar filter filter_fail filter_help filter_select \
filter_select_help filter_select_toolbar folderlist folderlist_folders \
folderlist_icons folderlist_nfolders folderlist_noicons folderlist_select \
folders folders_help folders_toolbar footer frontend_compose_timeout \
frontend_login_error frontend_security frontend_session frontend_timeout \
fullname fullname_help header include include_help list list_help list_msgs \
list_nav_1 list_nav_1_icons list_nav_1_noicons list_nav_2 list_title \
list_toolbar_bottom list_toolbar_top login login_hermes logout logout_raven \
manage manage_help passwd passwd_help prefs_compose prefs_compose1_help \
prefs_compose2 prefs_compose2_help prefs_display prefs_display1_help \
prefs_display_abook_sort prefs_display_folder_sort prefs_folder \
prefs_folder_help prefs_general prefs_general_help prefs_option printable \
printable_addr printable_hdrs printable_tail quota quota_help raven_blocked \
redirect redirect_fail redirect_help rename rename_help rename_toolbar reply \
reply_help restart rm roles_entry roles_entry_help roles_list roles_list_help \
roles_select roles_select_help search_date search_date_help search_footer \
search_header search_size search_size_help search_status search_status_help \
search_text search_text_help sieve sieve_error sieve_error_tail sieve_fail \
sieve_help sizes sizes_help sizes_toolbar sort_icon spam spam_fail spam_help \
spell status submitenter_js tb_form tb_icon tb_icon_form tb_item toolbar \
toolbar_help toolbar_left toolbar_right toolbar_stub_help transfer \
transfer_help transfer_toolbar_bottom transfer_toolbar_top upload_select \
upload_select_help vacation vacation_fail vacation_help vaclog vaclog_fail \
vaclog_help welcome welcome_help

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
