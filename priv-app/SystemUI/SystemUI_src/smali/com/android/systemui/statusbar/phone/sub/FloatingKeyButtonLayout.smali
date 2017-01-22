.class public Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingKeyButtonLayout.java"


# static fields
.field public static final POSITION_LEFT_BOTTOM:I = 0x1

.field public static final POSITION_LEFT_TOP:I = 0x0

.field public static final POSITION_RIGHT_BOTTOM:I = 0x3

.field public static final POSITION_RIGHT_TOP:I = 0x2


# instance fields
.field private mDistanceToMove:F

.field private mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

.field private mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private mHideButton:Landroid/widget/ImageView;

.field private mHideButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIsMenuVisible:Z

.field mIsStartMove:Z

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsMenuVisible:Z

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButtonClickListener:Landroid/view/View$OnClickListener;

    .line 182
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsStartMove:Z

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->hide()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->collapseAndRemoveExpandedWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->hideAndRemoveExpandedWindow()V

    return-void
.end method

.method private collapseAndRemoveExpandedWindow()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->collapseAndRemoveExpandedWindow()V

    .line 376
    return-void
.end method

.method private collapseAnim()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xe9

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 288
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v9, [F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    aput v2, v5, v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v2, v6

    :goto_0
    aput v2, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 293
    .local v0, "animatorX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 294
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    new-instance v2, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 315
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 317
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsMenuVisible:Z

    if-eqz v2, :cond_2

    .line 318
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v9, [F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v2

    aput v2, v5, v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v2, v6

    :goto_1
    aput v2, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 324
    .local v1, "animatorY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 325
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 330
    .end local v1    # "animatorY":Landroid/animation/ObjectAnimator;
    :goto_2
    return-void

    .line 288
    .end local v0    # "animatorX":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v2, v6

    goto :goto_0

    .line 318
    .restart local v0    # "animatorX":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v2, v6

    goto :goto_1

    .line 328
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    goto :goto_2
.end method

.method private expand()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->expandAnim()V

    .line 189
    return-void
.end method

.method private expandAnim()V
    .locals 13

    .prologue
    .line 204
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 205
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsStartMove:Z

    if-nez v7, :cond_0

    .line 206
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 209
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0xe9

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 211
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v11

    aput v11, v10, v7

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    add-float/2addr v7, v12

    :goto_0
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 216
    .local v1, "animatorX1":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    add-float/2addr v7, v12

    :goto_1
    aput v7, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v7, v12

    :goto_2
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 221
    .local v2, "animatorX2":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v7, v12

    :goto_3
    aput v7, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isLeft()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    :goto_4
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 227
    .local v3, "animatorX3":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xe9

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 228
    const-wide/16 v8, 0xa6

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    const-wide/16 v8, 0xa6

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    const-wide/16 v8, 0xe9

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 235
    const-wide/16 v8, 0x190

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 237
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 238
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 239
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 241
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 242
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 244
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsMenuVisible:Z

    if-eqz v7, :cond_b

    .line 245
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 247
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v11

    aput v11, v10, v7

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    sub-float/2addr v7, v12

    :goto_5
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 252
    .local v4, "animatorY1":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    sub-float/2addr v7, v12

    :goto_6
    aput v7, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v7, v12

    :goto_7
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 258
    .local v5, "animatorY2":Landroid/animation/ObjectAnimator;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v10, v7, [F

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v7, v12

    :goto_8
    aput v7, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isBottom()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    :goto_9
    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 265
    .local v6, "animatorY3":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xe9

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    const-wide/16 v8, 0xa6

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 267
    const-wide/16 v8, 0xa6

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 268
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    new-instance v7, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    const-wide/16 v8, 0xe9

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 273
    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 275
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 276
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 277
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 279
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    .line 285
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "animatorX1":Landroid/animation/ObjectAnimator;
    .end local v2    # "animatorX2":Landroid/animation/ObjectAnimator;
    .end local v3    # "animatorX3":Landroid/animation/ObjectAnimator;
    .end local v4    # "animatorY1":Landroid/animation/ObjectAnimator;
    .end local v5    # "animatorY2":Landroid/animation/ObjectAnimator;
    .end local v6    # "animatorY3":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_a
    return-void

    .line 211
    .restart local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    sub-float/2addr v7, v12

    goto/16 :goto_0

    .line 216
    .restart local v1    # "animatorX1":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    sub-float/2addr v7, v12

    goto/16 :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v7, v12

    goto/16 :goto_2

    .line 221
    .restart local v2    # "animatorX2":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v7, v12

    goto/16 :goto_3

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    sub-float/2addr v7, v12

    goto/16 :goto_4

    .line 247
    .restart local v3    # "animatorX3":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    add-float/2addr v7, v12

    goto/16 :goto_5

    .line 252
    .restart local v4    # "animatorY1":Landroid/animation/ObjectAnimator;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41400000    # 12.0f

    add-float/2addr v7, v12

    goto/16 :goto_6

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v7, v12

    goto/16 :goto_7

    .line 258
    .restart local v5    # "animatorY2":Landroid/animation/ObjectAnimator;
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v7, v12

    goto/16 :goto_8

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTranslationY()F

    move-result v7

    iget v12, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    add-float/2addr v7, v12

    goto/16 :goto_9

    .line 282
    .end local v4    # "animatorY1":Landroid/animation/ObjectAnimator;
    .end local v5    # "animatorY2":Landroid/animation/ObjectAnimator;
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method private hide()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->hideAnim()V

    .line 193
    return-void
.end method

.method private hideAndRemoveExpandedWindow()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->hideAndRemoveExpandedWindow()V

    .line 372
    return-void
.end method

.method private hideAnim()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xe9

    const/4 v5, 0x2

    .line 333
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 336
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 337
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    new-instance v2, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$3;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 357
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 359
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsMenuVisible:Z

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 362
    .local v1, "animatorZ":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 364
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 368
    .end local v1    # "animatorZ":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    goto :goto_0

    .line 333
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 360
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isBottom()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 196
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isButtonClicked(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "result":Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 115
    .local v0, "hitRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 117
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHitRect(Landroid/graphics/Rect;)V

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHitRect(Landroid/graphics/Rect;)V

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    or-int/2addr v1, v2

    .line 122
    return v1
.end method

.method private isHideButtonClicked(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "result":Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .local v0, "hitRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 109
    return v1
.end method

.method private isLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 200
    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public die()V
    .locals 5

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerImpl;

    .line 59
    .local v2, "windowManager":Landroid/view/WindowManagerImpl;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 60
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 61
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v2, v0}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v2

    .line 63
    invoke-virtual {v2, p0}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->expand()V

    .line 151
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const v4, 0x7f0900ad

    .line 155
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 157
    const v3, 0x7f0f00ba

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    .line 158
    const v3, 0x7f0f00bb

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 159
    const v3, 0x7f0f00b9

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 161
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 162
    .local v1, "drawableHide":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "drawableBack":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 165
    .local v2, "drawableMenu":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 172
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mDistanceToMove:F

    .line 176
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 130
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isHideButtonClicked(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->collapseAnim()V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 87
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isButtonClicked(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->collapseAnim()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFloatingBackKeyLayout(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0
    .param p1, "f"    # Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBackKeyLayout:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    .line 180
    return-void
.end method

.method public setKeysPosition(IIIZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "position"    # I
    .param p4, "isExpand"    # Z

    .prologue
    const/16 v2, 0x8

    .line 67
    iput p3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mPosition:I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setX(F)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setY(F)V

    .line 71
    if-eqz p4, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setX(F)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setY(F)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mFloatingMoreMenu:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMenuVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsMenuVisible:Z

    .line 380
    return-void
.end method

.method public setMoveStart(Z)V
    .locals 0
    .param p1, "isStartMove"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->mIsStartMove:Z

    .line 185
    return-void
.end method
