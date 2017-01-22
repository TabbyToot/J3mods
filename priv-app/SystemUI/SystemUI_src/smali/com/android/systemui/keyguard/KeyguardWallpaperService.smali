.class public Lcom/android/systemui/keyguard/KeyguardWallpaperService;
.super Landroid/app/Service;
.source "KeyguardWallpaperService.java"


# static fields
.field private static final MSG_EXECUTE_COMMAND:I = 0x64

.field private static final MSG_HANDLE_UNLOCK:I = 0x190

.field private static final MSG_RELEASE_WAKELOCK:I = 0x2bc

.field private static final MSG_SEND_TOUCN_EVENT:I = 0xc8

.field private static final MSG_SET_CONTEXTUAL_WALLPAPER:I = 0x12c

.field private static final MSG_SHOWN_CALLBACK:I = 0x258

.field private static final MSG_SHOW_UNLOCK_AFFORDANCE:I = 0x1f4

.field static final PERMISSION:Ljava/lang/String; = "android.permission.CONTROL_KEYGUARD"

.field static final TAG:Ljava/lang/String; = "KeyguardWallpaperService"


# instance fields
.field private final mBinder:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardWallpaperShowCallback:Lcom/android/internal/policy/IKeyguardShowCallback;

.field private mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

.field private mPM:Landroid/os/PowerManager;

.field private mShowKeyguardWallpaperWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mShownOnce:Z

.field private mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mWindowManagerImpl:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShownOnce:Z

    .line 69
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService$2;-><init>(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mBinder:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;

    .line 250
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService$3;-><init>(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardWallpaperService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleExecuteCommand(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleSendTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleSetContextualWallpaper(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleHandleUnlock(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Landroid/os/Bundle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleShowUnlockAffordance(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleOnShown()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->handleReleaseWakelock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/keyguard/KeyguardWallpaperService;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/keyguard/KeyguardWallpaperService;Lcom/android/internal/policy/IKeyguardShowCallback;)Lcom/android/internal/policy/IKeyguardShowCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardWallpaperService;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mKeyguardWallpaperShowCallback:Lcom/android/internal/policy/IKeyguardShowCallback;

    return-object p1
.end method

.method private handleExecuteCommand(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->executeCommand(II)V

    .line 208
    return-void
.end method

.method private handleHandleUnlock(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleUnlock(Landroid/view/MotionEvent;)V

    .line 220
    return-void
.end method

.method private handleOnShown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mKeyguardWallpaperShowCallback:Lcom/android/internal/policy/IKeyguardShowCallback;

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mKeyguardWallpaperShowCallback:Lcom/android/internal/policy/IKeyguardShowCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IKeyguardShowCallback;->onShown(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mKeyguardWallpaperShowCallback:Lcom/android/internal/policy/IKeyguardShowCallback;

    .line 241
    :cond_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardWallpaperService"

    const-string v2, "RemoteException occured while mKeyguardWallpaperShowCallback.onShown()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleReleaseWakelock()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShowKeyguardWallpaperWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShowKeyguardWallpaperWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShowKeyguardWallpaperWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 248
    :cond_0
    return-void
.end method

.method private handleSendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 212
    return-void
.end method

.method private handleSetContextualWallpaper(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "displayId"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->setContextualWallpaper(Landroid/graphics/Bitmap;I)V

    .line 216
    return-void
.end method

.method private handleShowUnlockAffordance(Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "obj"    # Landroid/os/Bundle;
    .param p2, "displayId"    # I

    .prologue
    .line 223
    const-wide/16 v2, 0x0

    .line 224
    .local v2, "startDelay":J
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 225
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 226
    const-string v1, "startDelay"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 227
    const-string v1, "rect"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "rect":Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .line 229
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->showUnlockAffordance(JLandroid/graphics/Rect;I)V

    .line 230
    return-void
.end method


# virtual methods
.method checkPermission()V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "KeyguardWallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump KeyguardWallpaperService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v0, "KeyguardWallpaperService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShownOnce"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShownOnce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mBinder:Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mContext:Landroid/content/Context;

    .line 105
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mPM:Landroid/os/PowerManager;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "show keyguardwallpaper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShowKeyguardWallpaperWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mShowKeyguardWallpaperWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 111
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;-><init>(Landroid/content/Context;Landroid/view/WindowManagerImpl;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 133
    const-string v0, "KeyguardWallpaperService"

    const-string v1, "onDestroy!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 136
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 124
    const-string v0, "KeyguardWallpaperService"

    const-string v1, "onUnbind!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardWallpaperService;->mMediator:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->removeWindow()V

    .line 127
    const/4 v0, 0x0

    return v0
.end method
