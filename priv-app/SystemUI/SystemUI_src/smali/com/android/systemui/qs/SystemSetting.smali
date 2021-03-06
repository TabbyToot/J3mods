.class public abstract Lcom/android/systemui/qs/SystemSetting;
.super Landroid/database/ContentObserver;
.source "SystemSetting.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    .line 41
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    .line 42
    return-void
.end method

.method private rebindForCurrentUser()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 49
    const-string v0, "SystemSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingName :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rebindForCurrentUser :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected abstract handleValueChanged(I)V
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SystemSetting;->handleValueChanged(I)V

    .line 72
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 58
    return-void
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "mNewUserId"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/qs/SystemSetting;->rebindForCurrentUser()V

    .line 77
    return-void
.end method
