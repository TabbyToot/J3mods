.class public Lcom/android/systemui/statusbar/PickUpBlackScreen;
.super Landroid/app/Activity;
.source "PickUpBlackScreen.java"


# static fields
.field private static final BACK:I = 0x8

.field private static final CHECK_USER_ACTION:I = 0xb

.field private static final DISMISS_POPUP:I = 0xa

.field private static final LCD_OFF:I = 0x4

.field private static final LCD_ON:I = 0x3

.field private static final MESSAGE_SOUND:I = 0x2

.field private static final PICKUP_READY:I = 0x9

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PickUpBlackScreen"

.field private static final VIBRATE_RUN:I = 0x1

.field public static mContext:Landroid/content/Context;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private lockpause:Z

.field private mHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPhoneDetect:Landroid/widget/FrameLayout;

.field private mPhonePutDown:Landroid/widget/FrameLayout;

.field private mPickupDialog:Landroid/app/AlertDialog;

.field private mPickupEvent:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private pm:Landroid/os/PowerManager;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupDialog:Landroid/app/AlertDialog;

    .line 65
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->lockpause:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupEvent:Z

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;-><init>(Lcom/android/systemui/statusbar/PickUpBlackScreen;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;-><init>(Lcom/android/systemui/statusbar/PickUpBlackScreen;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpBlackScreen;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupEvent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/PickUpBlackScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpBlackScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupEvent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpBlackScreen;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpBlackScreen;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpBlackScreen;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/PickUpBlackScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpBlackScreen;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->sound()V

    return-void
.end method

.method private playTone(Landroid/net/Uri;)V
    .locals 6
    .param p1, "soundUri"    # Landroid/net/Uri;

    .prologue
    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->activity:Landroid/app/Activity;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 254
    .local v2, "tNM":Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 255
    const/4 v1, -0x1

    .line 256
    .local v1, "ringerMode":I
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "ringerMode":I
    .end local v2    # "tNM":Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "STATUSBAR-PickUpBlackScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone() - Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pokeUserActivity()V
    .locals 5

    .prologue
    .line 272
    const-string v1, "STATUSBAR-PickUpBlackScreen"

    const-string v2, "pokeUserActivity()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->pm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "STATUSBAR-PickUpBlackScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm.userActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showPickUpDialog()V
    .locals 4

    .prologue
    .line 219
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "showTryDownDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 239
    return-void
.end method

.method private sound()V
    .locals 3

    .prologue
    .line 242
    const-string v1, "STATUSBAR-PickUpBlackScreen"

    const-string v2, "sound() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/reactive_alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 245
    .local v0, "soundUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->playTone(Landroid/net/Uri;)V

    .line 246
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->setResult(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->finish()V

    .line 216
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->setContentView(I)V

    .line 135
    iput-object p0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->activity:Landroid/app/Activity;

    .line 136
    sput-object p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mContext:Landroid/content/Context;

    .line 138
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mVibrator:Landroid/os/Vibrator;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->activity:Landroid/app/Activity;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 141
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 146
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->pm:Landroid/os/PowerManager;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;

    .line 153
    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhoneDetect:Landroid/widget/FrameLayout;

    .line 155
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 205
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 207
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onDestroy() ->  unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 179
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->lockpause:Z

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->pokeUserActivity()V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    .line 187
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    .line 188
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 189
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onPause() ->  unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->lockpause:Z

    if-eqz v0, :cond_1

    .line 162
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 165
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onResume() -> registerListenerEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->lockpause:Z

    .line 174
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 198
    return-void
.end method
