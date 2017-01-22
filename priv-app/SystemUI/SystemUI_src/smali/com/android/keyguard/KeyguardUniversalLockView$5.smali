.class Lcom/android/keyguard/KeyguardUniversalLockView$5;
.super Landroid/os/Handler;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$200(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    .line 438
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->WRONG_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$500()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 439
    const-string v16, "KeyguardUniversalLockView"

    const-string v17, "In handleMessage()"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->isChecking:Z
    invoke-static/range {v16 .. v17}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$402(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # operator++ for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1608(Lcom/android/keyguard/KeyguardUniversalLockView;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1700(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v12

    .line 449
    .local v12, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v12, :cond_6

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v17, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v17 .. v17}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    .line 452
    .local v2, "attempts":I
    rsub-int/lit8 v13, v2, 0x5

    .line 454
    .local v13, "remaining":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->updateErrorText(I)Ljava/lang/String;
    invoke-static {v0, v13}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2100(Lcom/android/keyguard/KeyguardUniversalLockView;I)Ljava/lang/String;

    move-result-object v17

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2002(Lcom/android/keyguard/KeyguardUniversalLockView;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    sget-boolean v16, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v16, :cond_0

    if-eqz v13, :cond_2

    :cond_0
    rem-int/lit8 v16, v2, 0x5

    if-nez v16, :cond_2

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v4

    .line 458
    .local v4, "deadline":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->handleAttemptLockout(J)V
    invoke-static {v0, v4, v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2200(Lcom/android/keyguard/KeyguardUniversalLockView;J)V

    .line 460
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->reset()V

    .line 517
    .end local v2    # "attempts":I
    .end local v4    # "deadline":J
    .end local v12    # "lDeviceDisableForMaxFailedAttempt":Z
    .end local v13    # "remaining":I
    :cond_1
    :goto_0
    return-void

    .line 465
    .restart local v2    # "attempts":I
    .restart local v12    # "lDeviceDisableForMaxFailedAttempt":Z
    .restart local v13    # "remaining":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->playVoice:Z
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2300(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2400(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v16

    if-nez v16, :cond_3

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2600(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/speech/tts/TextToSpeech;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v17, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2000(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2500(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/util/HashMap;

    move-result-object v19

    invoke-virtual/range {v16 .. v19}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 469
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v17, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;
    invoke-static/range {v17 .. v17}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2700(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/Animation;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->playVibration:Z
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2800(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 472
    :try_start_0
    const-string v16, "android.os.SystemVibrator"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 473
    .local v11, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 474
    .local v3, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 475
    .local v7, "enumMagnitudeTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    .line 476
    .local v15, "vibratorInstance":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 477
    .local v14, "vibrateMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 478
    .local v8, "enumObject":Ljava/lang/Object;
    array-length v10, v3

    .line 479
    .local v10, "innerClassCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v10, :cond_4

    .line 480
    aget-object v16, v3, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "android.os.SystemVibrator$MagnitudeType"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 481
    aget-object v7, v3, v9

    .line 485
    :cond_4
    const-string v16, "MaxMagnitude"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 486
    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    .line 487
    const-string v16, "vibrate"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, [J

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v17, v18

    const/16 v18, 0x2

    aput-object v7, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 488
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->VIBRATE_DURATION:[J
    invoke-static {}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2900()[J

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v8, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7

    goto/16 :goto_0

    .line 489
    .end local v3    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "enumMagnitudeTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "enumObject":Ljava/lang/Object;
    .end local v9    # "i":I
    .end local v10    # "innerClassCount":I
    .end local v11    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "vibrateMethod":Ljava/lang/reflect/Method;
    .end local v15    # "vibratorInstance":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 490
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 479
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "enumMagnitudeTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "enumObject":Ljava/lang/Object;
    .restart local v9    # "i":I
    .restart local v10    # "innerClassCount":I
    .restart local v11    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "vibrateMethod":Ljava/lang/reflect/Method;
    .restart local v15    # "vibratorInstance":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 491
    .end local v3    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "enumMagnitudeTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "enumObject":Ljava/lang/Object;
    .end local v9    # "i":I
    .end local v10    # "innerClassCount":I
    .end local v11    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "vibrateMethod":Ljava/lang/reflect/Method;
    .end local v15    # "vibratorInstance":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 492
    .local v6, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v6}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_0

    .line 493
    .end local v6    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v6

    .line 494
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 495
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    .line 496
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 497
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v6

    .line 498
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 499
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v6

    .line 500
    .local v6, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v6}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto/16 :goto_0

    .line 501
    .end local v6    # "e":Ljava/lang/InstantiationException;
    :catch_6
    move-exception v6

    .line 502
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    .line 503
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_7
    move-exception v6

    .line 504
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 509
    .end local v2    # "attempts":I
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v13    # "remaining":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->disableDevicePermanently()V
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$3000(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    goto/16 :goto_0

    .line 511
    .end local v12    # "lDeviceDisableForMaxFailedAttempt":Z
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->RIGHT_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$600()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static/range {v16 .. v17}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1602(Lcom/android/keyguard/KeyguardUniversalLockView;I)I

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    move-object/from16 v16, v0

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_0
.end method
