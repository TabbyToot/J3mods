.class public Lcom/android/systemui/keyguard/ViewCaptureUtil;
.super Ljava/lang/Object;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCaptureUtil"


# instance fields
.field private final LAND_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

.field private final S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

.field private heightOfSecond:I

.field private leftOfFirst:I

.field private leftOfSecond:I

.field private mAm:Landroid/app/ActivityManager;

.field private mBottomBitmap:Landroid/graphics/Bitmap;

.field private mClockBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mIsCovered:Z

.field private mMobileKeyboardIsCovered:Z

.field private mNewCapture:Z

.field private mRoot:Landroid/view/View;

.field private mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

.field private final mWallpaperActivity:[Ljava/lang/String;

.field private topOfFirst:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "lockscreen_capture_port.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "lockscreen_capture_land.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LAND_FILE_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "lockscreen_capture_port_keyboard.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

    .line 36
    const-string v0, "s_view_cover_capture.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mBottomBitmap:Landroid/graphics/Bitmap;

    .line 51
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.gallery3d"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.wallpapercropper2.KeyguardCropActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.settings.SubSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mWallpaperActivity:[Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRoot:Landroid/view/View;

    .line 66
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mAm:Landroid/app/ActivityManager;

    .line 67
    new-instance v0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;-><init>(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    .line 69
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mAm:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mWallpaperActivity:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/keyguard/ViewCaptureUtil;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mBottomBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mBottomBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/graphics/Bitmap;
    .param p4, "x4"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->arrangeComponents(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/res/Configuration;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private arrangeComponents(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "firstBmp"    # Landroid/graphics/Bitmap;
    .param p4, "secondBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 111
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_2

    .line 112
    :cond_0
    const-string v4, "ViewCaptureUtil"

    const-string v5, "root view is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 149
    :cond_1
    :goto_0
    return-object v0

    .line 116
    :cond_2
    if-eqz p3, :cond_3

    if-nez p4, :cond_4

    .line 117
    :cond_3
    const-string v4, "ViewCaptureUtil"

    const-string v5, "capture view is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 118
    goto :goto_0

    .line 122
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_5

    .line 123
    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->leftOfFirst:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->topOfFirst:I

    int-to-float v5, v5

    invoke-virtual {v1, p3, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    if-eqz p4, :cond_1

    .line 136
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v4, :cond_6

    .line 137
    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCoverState.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondView.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->heightOfSecond:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->heightOfSecond:I

    sub-int v2, v4, v5

    .line 146
    .local v2, "topMargin":I
    :goto_2
    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->leftOfSecond:I

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {v1, p4, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 126
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "topMargin":I
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 141
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_6
    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "root.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondView.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->heightOfSecond:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->heightOfSecond:I

    sub-int v2, v4, v5

    .restart local v2    # "topMargin":I
    goto :goto_2
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 321
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "t":Ljava/io/IOException;
    const-string v1, "ViewCaptureUtil"

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getCoverState()V
    .locals 5

    .prologue
    .line 328
    const-string v3, "cover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 329
    .local v0, "coverManager":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_0

    .line 331
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 332
    .local v1, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_0

    .line 333
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v1    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_0
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ViewCaptureUtil"

    const-string v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSavePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 311
    const-string v0, "/storage/emulated/"

    .line 312
    .local v0, "LOCK_PREVIEW_PATH":Ljava/lang/String;
    const-string v1, "/Android/data/com.android.systemui/cache/"

    .line 314
    .local v1, "LOCK_PREVIEW_PATH2":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 315
    .local v2, "currentUserId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string v2, "ViewCaptureUtil"

    const-string v3, "bmp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 187
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 188
    const-string v0, "s_view_cover_capture.png"

    .line 213
    .local v0, "fileName":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_2
    iget v2, p3, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_0

    .line 204
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_4

    .line 205
    const-string v0, "lockscreen_capture_port_keyboard.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 192
    .end local v0    # "fileName":Ljava/lang/String;
    :pswitch_0
    const-string v0, "lockscreen_capture_land.png"

    .line 193
    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 196
    .end local v0    # "fileName":Ljava/lang/String;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_3

    .line 197
    const-string v0, "lockscreen_capture_port_keyboard.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 199
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_3
    const-string v0, "lockscreen_capture_port.png"

    .line 201
    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 207
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_4
    const-string v0, "lockscreen_capture_port.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const-string v4, "ViewCaptureUtil"

    const-string v5, "bmp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v2, 0x0

    .line 159
    .local v2, "out":Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "SCREENSHOT_FILE_PATH":Ljava/lang/String;
    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture image path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x4000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 165
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 166
    const-string v4, "ViewCaptureUtil"

    const-string v5, "save captured file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    invoke-static {v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 171
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "ViewCaptureUtil"

    const-string v5, "saveScreenshot exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 167
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x3f59999a    # 0.85f

    .line 75
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_2

    .line 76
    :cond_0
    const-string v2, "ViewCaptureUtil"

    const-string v3, "view is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    .line 101
    :cond_1
    :goto_0
    return-object v0

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    iput-boolean v7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    .line 84
    instance-of v2, p1, Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-eqz v2, :cond_3

    .line 85
    const-string v2, "ViewCaptureUtil"

    const-string v3, "scale clock view area for mobile keyboard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 98
    :cond_3
    :goto_1
    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 88
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-ne v2, v7, :cond_5

    .line 89
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    .line 90
    instance-of v2, p1, Lcom/android/keyguard/sec/SecKeyguardClockView;

    if-eqz v2, :cond_3

    .line 91
    const-string v2, "ViewCaptureUtil"

    const-string v3, "scale clock view area for S View Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 95
    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    goto :goto_1
.end method


# virtual methods
.method public screenCapture(Landroid/view/View;Landroid/view/View;Z)V
    .locals 2
    .param p1, "clockView"    # Landroid/view/View;
    .param p2, "bottomView"    # Landroid/view/View;
    .param p3, "isCover"    # Z

    .prologue
    .line 288
    iput-boolean p3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    .line 289
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getCoverState()V

    .line 293
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    const-string v0, "ViewCaptureUtil"

    const-string v1, "try to capture the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->leftOfFirst:I

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->topOfFirst:I

    .line 301
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->leftOfSecond:I

    .line 302
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->heightOfSecond:I

    .line 304
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    .line 305
    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mBottomBitmap:Landroid/graphics/Bitmap;

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    goto :goto_0
.end method
