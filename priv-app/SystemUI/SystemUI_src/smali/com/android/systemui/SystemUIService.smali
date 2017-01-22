.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v7}, Lcom/android/systemui/SystemUIApplication;->getServices()[Lcom/android/systemui/SystemUI;

    move-result-object v4

    .line 69
    .local v4, "services":[Lcom/android/systemui/SystemUI;
    if-eqz p3, :cond_0

    array-length v7, p3

    if-nez v7, :cond_2

    .line 70
    :cond_0
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v6, v0, v1

    .line 71
    .local v6, "ui":Lcom/android/systemui/SystemUI;
    if-eqz v6, :cond_1

    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumping service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 70
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "arr$":[Lcom/android/systemui/SystemUI;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v6    # "ui":Lcom/android/systemui/SystemUI;
    :cond_2
    const/4 v7, 0x0

    aget-object v5, p3, v7

    .line 78
    .local v5, "svc":Ljava/lang/String;
    move-object v0, v4

    .restart local v0    # "arr$":[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v6, v0, v1

    .line 79
    .restart local v6    # "ui":Lcom/android/systemui/SystemUI;
    if-eqz v6, :cond_3

    .line 80
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 78
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v5    # "svc":Ljava/lang/String;
    .end local v6    # "ui":Lcom/android/systemui/SystemUI;
    :cond_4
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 39
    const-string v1, "PERF"

    const-string v2, "SystemUIService - onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v1}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method
