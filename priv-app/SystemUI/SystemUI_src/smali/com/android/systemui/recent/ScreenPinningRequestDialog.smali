.class public Lcom/android/systemui/recent/ScreenPinningRequestDialog;
.super Ljava/lang/Object;
.source "ScreenPinningRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final STATUSBAR_ANIMATING:Ljava/lang/String; = "com.android.systemui.statusbar.ANIMATING"

.field private static final TAG:Ljava/lang/String; = "ScreenPinningRequestDialog"

.field private static mDialog:Landroid/app/AlertDialog;


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field public final mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog$1;-><init>(Lcom/android/systemui/recent/ScreenPinningRequestDialog;)V

    iput-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 54
    return-void
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public clearPrompt()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "ScreenPinningRequestDialog"

    const-string v1, "clearPrompt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->unregisterReceivers()V

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 63
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 110
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->startLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    :cond_0
    return-void
.end method

.method public showPrompt()V
    .locals 13

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    .line 68
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04d4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "pinWindows":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04d3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "title":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04d5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "description_1":Ljava/lang/String;
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mIsWIFI:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04d7

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "description_2":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    .line 79
    .local v5, "hasPermanentMenuKey":Z
    if-eqz v5, :cond_2

    .line 80
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04db

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "description_3":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x5

    .line 91
    .local v7, "theme":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 92
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    const v9, 0x7f0a04d0

    invoke-virtual {v1, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    const v9, 0x7f0a04d1

    invoke-virtual {v1, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 98
    sget-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 99
    sget-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 101
    sget-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 102
    const-string v9, "ScreenPinningRequestDialog"

    const-string v10, "showPrompt"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->registerReceivers()V

    .line 104
    return-void

    .line 72
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "description_2":Ljava/lang/String;
    .end local v4    # "description_3":Ljava/lang/String;
    .end local v5    # "hasPermanentMenuKey":Z
    .end local v7    # "theme":I
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04d6

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 80
    .restart local v3    # "description_2":Ljava/lang/String;
    .restart local v5    # "hasPermanentMenuKey":Z
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04d9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 84
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04da

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "description_3":Ljava/lang/String;
    :goto_2
    goto/16 :goto_1

    .end local v4    # "description_3":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0a04d8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public unregisterReceivers()V
    .locals 3

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
