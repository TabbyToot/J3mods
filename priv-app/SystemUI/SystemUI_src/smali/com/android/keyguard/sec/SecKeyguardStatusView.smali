.class public Lcom/android/keyguard/sec/SecKeyguardStatusView;
.super Landroid/widget/FrameLayout;
.source "SecKeyguardStatusView.java"


# static fields
.field private static final MSG_CONTENT_UPDATED:I = 0x12cb

.field private static final MSG_MY_PROFILE_SETTINGS_CHANGED:I = 0x64

.field private static final MY_PROFILE_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "SecKeyguardStatusView"


# instance fields
.field private mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentOrientation:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsDcmClock:Z

.field private mIsNetworkRoaming:Z

.field mIsRotationEnabled:Z

.field private mProfileSettingsObserver:Landroid/database/ContentObserver;

.field private mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

.field private mSecKeyguardProfileView:Lcom/android/keyguard/sec/SecKeyguardProfileView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mCurrentOrientation:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsRotationEnabled:Z

    .line 36
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->handleMyProfileSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/SecKeyguardStatusView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsNetworkRoaming:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardStatusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardStatusView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsDcmClock:Z

    return v0
.end method

.method private handleMyProfileSettngsChanged()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    .line 180
    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateFontColor()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateFontColor()V

    .line 237
    :cond_0
    return-void
.end method

.method private updateStatusView()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 152
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isProfileOn(Landroid/content/Context;)Z

    move-result v1

    .line 153
    .local v1, "isProfileOn":Z
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 154
    .local v0, "isEasyUxOn":Z
    const-string v2, "SecKeyguardStatusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatusView(): isProfileOn= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isEasyUxOn= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->removeAllViews()V

    .line 157
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJProject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 160
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 161
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$layout;->sec_keyguard_profile_view:I

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;)V

    .line 162
    sget v2, Lcom/android/keyguard/R$id;->keyguard_sec_profile_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecKeyguardProfileView;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardProfileView:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    .line 176
    :goto_1
    return-void

    .line 158
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsDcmClock:Z

    .line 167
    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsDcmClock:Z

    if-eqz v2, :cond_3

    .line 168
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$layout;->dcm_keyguard_clock_view:I

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v7, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;II)V

    .line 174
    :goto_2
    sget v2, Lcom/android/keyguard/R$id;->keyguard_sec_clock_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecKeyguardClockView;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    goto :goto_1

    .line 171
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_view:I

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v7, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->addView(Landroid/view/View;II)V

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 123
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardStatusView$3;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    .line 131
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 133
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 138
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isProfileOn(Landroid/content/Context;)Z

    move-result v0

    .line 92
    .local v0, "isProfileOn":Z
    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 93
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mCurrentOrientation:I

    .line 95
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsRotationEnabled:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    .line 98
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfileSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 148
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 149
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mCurrentOrientation:I

    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mIsRotationEnabled:Z

    .line 79
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V

    .line 80
    return-void
.end method

.method public setCoverState(Z)V
    .locals 3
    .param p1, "isCovered"    # Z

    .prologue
    .line 223
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isCovered()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 224
    const-string v0, "SecKeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoverState changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {p1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->setCoverState(Z)V

    .line 226
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateFontColor()V

    .line 228
    :cond_0
    return-void
.end method

.method public updateLongShadowImageViews()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateLongShadowImageViews()V

    .line 186
    :cond_0
    return-void
.end method

.method public updateOwnerInfo(ZZ)V
    .locals 1
    .param p1, "isUpdateOwnerInfo"    # Z
    .param p2, "isForced"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateOwnerInfo(ZZ)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardProfileView:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mSecKeyguardProfileView:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->updateOwnerInfo(ZZ)V

    .line 194
    :cond_1
    return-void
.end method
