.class public Lcom/android/keyguard/sec/KeyguardOpenThemeManager;
.super Ljava/lang/Object;
.source "KeyguardOpenThemeManager.java"


# static fields
.field public static final CURRENT_THEME_PACKAGE:Ljava/lang/String; = "current_sec_theme_package_open_theme"

.field public static final CURRENT_THEME_XML:Ljava/lang/String; = "current_sec_theme_xml_open_theme"

.field private static final KEY_OPEN_THEME_WALLPAPER_EFFECT_LOCK_SCREEN_ENABLED:Ljava/lang/String; = "opne_theme_effect_lockscreen_wallpaper"

.field private static final TAG:Ljava/lang/String; = "KeyguardOpenThemeManager"

.field private static final XML_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mIsEnabled:Z

.field private mNameOfClass:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 38
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mIsEnabled:Z

    .line 40
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->createView()V

    .line 43
    :cond_0
    return-void
.end method

.method private createView()V
    .locals 5

    .prologue
    .line 46
    const-string v0, ""

    .line 47
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "current_sec_theme_package_open_theme"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v2, "KeyguardOpenThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  xmlName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "animation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    new-instance v1, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mContext:Landroid/content/Context;

    const-string v3, "animation"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v1, "xmlView":Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->isParserSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    const-string v2, "KeyguardOpenThemeManager"

    const-string v3, "Create xmlView success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_0

    .line 58
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mPkgName:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mNameOfClass:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getNameOfClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mNameOfClass:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenThemeWallpaperView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRecreateNeeded()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mPkgName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "current_sec_theme_package_open_theme"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_2

    move v1, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 95
    goto :goto_0
.end method

.method public pauseAnimation()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->pauseAnimation()V

    .line 67
    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardOpenThemeManager;->mEffectViewBase:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->resumeAnimation()V

    .line 73
    :cond_0
    return-void
.end method
