.class public Lcom/android/systemui/statusbar/phone/sub/SubSystemUIService;
.super Landroid/app/Service;
.source "SubSystemUIService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubSystemUIService"


# instance fields
.field mSubStatusBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 86
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 38
    const-string v1, "SubSystemUIService"

    const-string v2, "SubSystemUIService - onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubSystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v1, p0}, Lcom/android/systemui/SystemUIApplication;->setContextForSubPanel(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubSystemUIService;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubSystemUIService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubSystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v1}, Lcom/android/systemui/SystemUIApplication;->isStartedSystemUIService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "SubSystemUIService"

    const-string v2, "SubSystemUIService call -> startServicesIfNeeded()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/SubSystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v1}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 57
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    goto :goto_0
.end method
