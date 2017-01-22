.class public abstract Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardWallpaperService.java"

# interfaces
.implements Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_getUnlockDelay:I = 0x6

.field static final TRANSACTION_handleUnlock:I = 0x4

.field static final TRANSACTION_sendTouchEvent:I = 0x2

.field static final TRANSACTION_setContextualWallpaper:I = 0x3

.field static final TRANSACTION_setKeyguardWallpaperShowCallback:I = 0x7

.field static final TRANSACTION_showUnlockAffordance:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p0, p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v7, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->executeCommand(II)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_2
    const-string v7, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    sget-object v7, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 65
    .local v0, "_arg0":Landroid/view/MotionEvent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->sendTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/MotionEvent;
    goto :goto_1

    .line 70
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :sswitch_3
    const-string v7, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    sget-object v7, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 79
    .local v0, "_arg0":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->setContextualWallpaper(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    .end local v2    # "_arg1":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 85
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_4
    const-string v7, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 88
    sget-object v7, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 93
    .local v0, "_arg0":Landroid/view/MotionEvent;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->handleUnlock(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/MotionEvent;
    goto :goto_3

    .line 98
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :sswitch_5
    const-string v7, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 102
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 103
    sget-object v7, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 109
    .local v2, "_arg1":Landroid/graphics/Rect;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->showUnlockAffordance(JLandroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 106
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    goto :goto_4

    .line 115
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    :sswitch_6
    const-string v7, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->getUnlockDelay()J

    move-result-wide v4

    .line 117
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 123
    .end local v4    # "_result":J
    :sswitch_7
    const-string v7, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/IKeyguardShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardShowCallback;

    move-result-object v0

    .line 126
    .local v0, "_arg0":Lcom/android/internal/policy/IKeyguardShowCallback;
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->setKeyguardWallpaperShowCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
