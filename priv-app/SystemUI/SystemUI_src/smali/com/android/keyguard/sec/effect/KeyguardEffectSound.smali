.class public Lcom/android/keyguard/sec/effect/KeyguardEffectSound;
.super Ljava/lang/Object;
.source "KeyguardEffectSound.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCntForLog:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "KeyguardEffectSound"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    .line 23
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "KeyguardEffectSound"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    return-void
.end method


# virtual methods
.method public isPlayPossible()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    iget v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    .line 43
    const/4 v3, 0x0

    .line 46
    .local v3, "soundsEnabled":I
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v7, "lockscreen_sounds_enabled"

    const/4 v8, -0x2

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 54
    :goto_0
    if-nez v3, :cond_1

    .line 55
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    rem-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_0

    .line 56
    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    const-string v7, "isPlayPossible() - Current user\'s lockscreen sounds option is disabled!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    .line 82
    :cond_0
    :goto_1
    return v5

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    if-nez v7, :cond_2

    .line 64
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    rem-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_0

    .line 65
    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    const-string v7, "isPlayPossible() - mAudioManager is null!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    goto :goto_1

    .line 72
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 73
    .local v4, "vol":I
    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 74
    .local v2, "mute":Z
    if-nez v2, :cond_3

    if-gtz v4, :cond_4

    .line 75
    :cond_3
    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    rem-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_0

    .line 76
    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isPlayPossible() - Muted!!!, isStreamMute = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", volume = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    goto :goto_1

    :cond_4
    move v5, v6

    .line 82
    goto :goto_1
.end method
