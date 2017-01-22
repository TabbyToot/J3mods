.class public Lcom/android/keyguard/sec/KeyguardVoiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardVoiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final TAG:Ljava/lang/String; = "KeyguardVoiceWrapper"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultHelpText:Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsKeyguardDismissing:Z

.field private mIsVoiceUnlockFailed:Z

.field private mTextChageHandler:Landroid/os/Handler;

.field private mUsingWakeUpCommand:Z

.field private mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

.field private mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helpText"    # Landroid/widget/TextView;
    .param p3, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .line 43
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mIsVoiceUnlockFailed:Z

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mTextChageHandler:Landroid/os/Handler;

    .line 48
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mIsKeyguardDismissing:Z

    .line 64
    new-instance v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;

    .line 230
    new-instance v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$2;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mHelpText:Landroid/widget/TextView;

    .line 53
    iput-object p3, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 54
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->intitializeAndStart()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mIsVoiceUnlockFailed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mDefaultHelpText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mTextChageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->dismissKeyguard()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissKeyguard()V
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mIsKeyguardDismissing:Z

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mIsKeyguardDismissing:Z

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method private intitializeAndStart()V
    .locals 3

    .prologue
    .line 127
    const-string v0, "KeyguardVoiceWrapper"

    const-string v1, "intitializeAndStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->start()V

    .line 132
    return-void
.end method


# virtual methods
.method public checkWakeUpCommandCondition()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    const-string v4, "KeyguardVoiceWrapper"

    const-string v5, "checkWakeUpCommandCondition"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wake_up_lock_screen"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 193
    .local v2, "isMultipleWakeUpOn":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 195
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.vlingo.midas"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 196
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const-string v4, "KeyguardVoiceWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWakeUpCommandCondition info.enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_2

    .line 198
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    return v3

    .end local v2    # "isMultipleWakeUpOn":Z
    :cond_1
    move v2, v3

    .line 190
    goto :goto_0

    .line 200
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "isMultipleWakeUpOn":Z
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 201
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    .line 203
    const-string v3, "KeyguardVoiceWrapper"

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public cleanUpVoiceThread()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->cleanUp()V

    .line 150
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 167
    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->cleanUpVoiceThread()V

    .line 174
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "KeyguardVoiceWrapper"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 177
    const-string v1, "KeyguardVoiceWrapper"

    const-string v2, "onFinishInflate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "KeyguardVoiceWrapper"

    const-string v2, "onFinishInflate mUsingWakeUpCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mIsKeyguardDismissing:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->resumeVoiceThread()V

    .line 163
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->resumeVoiceThread()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->pauseVoiceThread()V

    goto :goto_0
.end method

.method public pauseVoiceThread()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    .line 144
    :cond_0
    return-void
.end method

.method public refreshDefaultHelpText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_swipe_voice_unlock_guide_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mDefaultHelpText:Ljava/lang/String;

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mDefaultHelpText:Ljava/lang/String;

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0
.end method

.method public resumeVoiceThread()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "KeyguardVoiceWrapper"

    const-string v1, "resumeVoiceThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    .line 139
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 228
    return-void
.end method
