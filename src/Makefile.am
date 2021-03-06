## We require new-style dependency handling.
AUTOMAKE_OPTIONS = 1.7

NULL =

EXTRA_DIST =						\
	org.ukui.PowerManager.xml			\
	org.ukui.PowerManager.Backlight.xml		\
	org.ukui.PowerManager.KbdBacklight.xml		\
	gpm-marshal.list				\
	$(NULL)

AM_CPPFLAGS =						\
	$(GLIB_CFLAGS)					\
	$(DBUS_CFLAGS)					\
	$(CAIRO_CFLAGS)					\
	$(KEYRING_CFLAGS)				\
	$(X11_CFLAGS)					\
	$(LIBNOTIFY_CFLAGS)				\
	$(CANBERRA_CFLAGS)				\
	$(GSTREAMER_CFLAGS)				\
	-DI_KNOW_THE_DEVICEKIT_POWER_API_IS_SUBJECT_TO_CHANGE \
	$(UPOWER_CFLAGS)				\
	-DBINDIR=\"$(bindir)\"			 	\
	-DSBINDIR=\"$(sbindir)\"			 \
	-DUKUILOCALEDIR=\""$(datadir)/locale"\"	\
	-DDATADIR=\"$(datadir)\"			\
	-DPREFIX=\""$(prefix)"\" 			\
	-DSYSCONFDIR=\""$(sysconfdir)"\" 		\
	-DLIBDIR=\""$(libdir)"\" 			\
	-DVERSION="\"$(VERSION)\"" 			\
	-DGPM_DATA=\"$(pkgdatadir)\"			\
	-DGTKBUILDERDIR=\"$(pkgdatadir)\"		\
	-DUP_DISABLE_DEPRECATED			\
	-DEGG_LOG_FILE=\""/tmp/gpm.log"\"		\
	-DEGG_VERBOSE="\"GPM_VERBOSE\""			\
	-DEGG_LOGGING="\"GPM_LOGGING\""			\
	-DEGG_CONSOLE="\"GPM_CONSOLE\""			\
	-I$(top_srcdir)					\
	$(DISABLE_DEPRECATED)

AM_CPPFLAGS += $(NULL)

bin_PROGRAMS =						\
	ukui-power-manager				\
	ukui-power-preferences				\
	$(NULL)

sbin_PROGRAMS =						\
	ukui-power-backlight-helper			\
	$(NULL)

if HAVE_TESTS
check_PROGRAMS =					\
	ukui-power-self-test
endif

noinst_LIBRARIES = libgpmshared.a
libgpmshared_a_SOURCES =				\
	egg-color.c					\
	egg-color.h					\
	egg-debug.h					\
	egg-debug.c					\
	egg-precision.h					\
	egg-precision.c					\
	egg-array-float.c				\
	egg-array-float.h				\
	egg-idletime.h					\
	egg-idletime.c					\
	egg-discrete.h					\
	egg-discrete.c					\
	gpm-common.h					\
	gpm-common.c					\
	gpm-brightness.h				\
	gpm-brightness.c				\
	gpm-marshal.h					\
	gpm-marshal.c					\
	gpm-upower.c					\
	gpm-upower.h

ukui_power_backlight_helper_SOURCES =			\
	gpm-backlight-helper.c				\
	$(NULL)

ukui_power_backlight_helper_LDADD =			\
	libgpmshared.a					\
	$(GLIB_LIBS)					\
	-lm

ukui_power_backlight_helper_CFLAGS =			\
	$(WARNINGFLAGS)					\
	$(NULL)

ukui_power_preferences_SOURCES =			\
	gpm-prefs.c					\
	gpm-prefs-core.h				\
	gpm-prefs-core.c				\
	$(NULL)

ukui_power_preferences_LDADD =				\
	libgpmshared.a					\
	$(GLIB_LIBS)					\
	$(X11_LIBS)					\
	$(CAIRO_LIBS)					\
	$(DBUS_LIBS)					\
	$(GPM_EXTRA_LIBS)				\
	$(UPOWER_LIBS)					\
	-lm

ukui_power_preferences_CFLAGS =			\
	$(WARNINGFLAGS)					\
	$(NULL)

ukui_power_manager_SOURCES =				\
	gpm-dpms.h					\
	gpm-dpms.c					\
	gpm-backlight.h					\
	gpm-backlight.c					\
	gpm-idle.h					\
	gpm-idle.c					\
	gpm-load.h					\
	gpm-load.c					\
	gpm-control.h					\
	gpm-control.c					\
	gpm-button.h					\
	gpm-button.c					\
	gpm-kbd-backlight.h 			\
	gpm-kbd-backlight.c 			\
	gpm-main.c					\
	gpm-manager.h					\
	gpm-manager.c					\
	gpm-tray-icon.h					\
	gpm-tray-icon.c					\
	gpm-screensaver.h				\
	gpm-screensaver.c				\
	gpm-session.h					\
	gpm-session.c					\
	gpm-networkmanager.h				\
	gpm-networkmanager.c				\
	gpm-icon-names.h				\
	gsd-media-keys-window.h				\
	gsd-media-keys-window.c				\
	msd-osd-window.h				\
	msd-osd-window.c				\
	gpm-engine.h					\
	gpm-engine.c					\
	$(NULL)

ukui_power_manager_LDADD =				\
	libgpmshared.a					\
	$(GLIB_LIBS)					\
	$(X11_LIBS)				\
	$(GSTREAMER_LIBS)				\
	$(CAIRO_LIBS)					\
	$(KEYRING_LIBS)					\
	$(DBUS_LIBS)					\
	$(X11_LIBS)						\
	$(CANBERRA_LIBS)				\
	$(LIBNOTIFY_LIBS)				\
	$(GPM_EXTRA_LIBS)				\
	$(UPOWER_LIBS)					\
	-lm

ukui_power_manager_CFLAGS =				\
	$(WARNINGFLAGS)					\
	$(NULL)
	

if HAVE_TESTS
ukui_power_self_test_SOURCES =				\
	gpm-self-test.c					\
	egg-color.h					\
	egg-color.c					\
	egg-test.h					\
	egg-test.c					\
	egg-debug.h					\
	egg-debug.c					\
	egg-precision.h					\
	egg-precision.c					\
	egg-idletime.h					\
	egg-idletime.c					\
	egg-discrete.h					\
	egg-discrete.c					\
	egg-array-float.h				\
	egg-array-float.c				\
	gpm-control.h					\
	gpm-control.c					\
	gpm-networkmanager.h				\
	gpm-networkmanager.c				\
	gpm-dpms.h					\
	gpm-dpms.c					\
	gpm-button.h					\
	gpm-button.c					\
	gpm-screensaver.h				\
	gpm-screensaver.c				\
	gpm-engine.h					\
	gpm-engine.c					\
	gpm-phone.h					\
	gpm-phone.c					\
	gpm-idle.h					\
	gpm-idle.c					\
	gpm-session.h					\
	gpm-session.c					\
	gpm-load.h					\
	gpm-load.c					\
	gpm-marshal.h					\
	gpm-marshal.c					\
	gpm-common.h					\
	gpm-common.c					\
	gpm-upower.h					\
	gpm-upower.c					\
	$(NULL)

ukui_power_self_test_LDADD =				\
	$(GLIB_LIBS)					\
	$(X11_LIBS)					\
	$(CAIRO_LIBS)					\
	$(KEYRING_LIBS)					\
	$(GSTREAMER_LIBS)				\
	$(UPOWER_LIBS)					\
	$(DBUS_LIBS)					\
	$(X11_LIBS)						\
	$(LIBNOTIFY_LIBS)				\
	$(GPM_EXTRA_LIBS)				\
	-lm

ukui_power_self_test_CFLAGS = -DEGG_TEST $(AM_CFLAGS) $(WARNINGFLAGS)
endif

BUILT_SOURCES = 					\
	gpm-marshal.c					\
	gpm-marshal.h					\
	$(NULL)

gpm-marshal.c: gpm-marshal.list
	echo "#include \"gpm-marshal.h\"" > $@ && \
	@GLIB_GENMARSHAL@ $< --prefix=gpm_marshal --body >> $@

gpm-marshal.h: gpm-marshal.list
	@GLIB_GENMARSHAL@ $< --prefix=gpm_marshal --header > $@


clean-local:
	rm -f *~
	rm -f gpm-marshal.c gpm-marshal.h

CLEANFILES = $(BUILT_SOURCES)

if HAVE_TESTS
TESTS = ukui-power-self-test
endif

MAINTAINERCLEANFILES =					\
	*~			      			\
	Makefile.in					\
	$(NULL)

