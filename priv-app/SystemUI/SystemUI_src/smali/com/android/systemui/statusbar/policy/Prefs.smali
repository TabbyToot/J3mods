.class public Lcom/android/systemui/statusbar/policy/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field public static final DO_NOT_DISTURB_DEFAULT:Z = false

.field public static final DO_NOT_DISTURB_PREF:Ljava/lang/String; = "do_not_disturb"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "status_bar"

.field public static final SHOWN_COMPAT_MODE_HELP:Ljava/lang/String; = "shown_compat_mode_help"

.field public static final SHOWN_QUICK_SETTINGS_HELP:Ljava/lang/String; = "shown_quick_settings_help"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-string v0, "status_bar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static getLastBatteryLevel(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_battery_level"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static read(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v0, "status_bar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setLastBatteryLevel(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_battery_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method
