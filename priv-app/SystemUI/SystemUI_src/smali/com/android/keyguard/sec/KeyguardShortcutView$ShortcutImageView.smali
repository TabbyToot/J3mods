.class Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;
.super Landroid/widget/ImageView;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutImageView"
.end annotation


# instance fields
.field private mBadgeCount:I

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mDistanceRatio:D

.field private mIsPressed:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 824
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 817
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    .line 818
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    .line 819
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    .line 821
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    .line 825
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 826
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 829
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 830
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 832
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 835
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 817
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    .line 818
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    .line 819
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    .line 821
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    .line 836
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 837
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    .line 838
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 839
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2600()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 840
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeCountColor:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2700()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 841
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 842
    return-void
.end method


# virtual methods
.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "badgeCount"    # I

    .prologue
    .line 933
    if-nez p1, :cond_0

    .line 934
    const/16 v18, 0x0

    .line 985
    :goto_0
    return-object v18

    .line 936
    :cond_0
    const/16 v18, 0x64

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3800()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 942
    :goto_1
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 944
    .local v14, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 945
    .local v15, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v14, v18

    .line 946
    .local v16, "paddingWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v15, v18

    .line 947
    .local v13, "paddingHeight":I
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    sub-int v11, v18, v16

    .line 948
    .local v11, "defaultContentsWidth":I
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v10, v18, v13

    .line 951
    .local v10, "defaultContentsHeight":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->isRTL()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 952
    const-string v18, "%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 956
    .local v5, "badgeText":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    .line 957
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 959
    const/16 v18, 0x64

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 960
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/android/keyguard/R$integer;->badge_paddingX_small:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    add-int v9, v18, v19

    .line 964
    .local v9, "contentsWidth":I
    :goto_3
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 965
    .local v8, "contentsHeight":I
    if-ge v9, v11, :cond_1

    .line 966
    move v9, v11

    .line 969
    :cond_1
    if-ge v8, v10, :cond_2

    .line 970
    sub-int v18, v10, v8

    div-int/lit8 v18, v18, 0x2

    add-int v15, v15, v18

    .line 971
    move v8, v10

    .line 974
    :cond_2
    add-int v17, v9, v16

    .line 975
    .local v17, "width":I
    add-int v12, v8, v13

    .line 977
    .local v12, "height":I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 978
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 980
    .local v7, "c":Landroid/graphics/Canvas;
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 981
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 982
    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 985
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 939
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "badgeText":Ljava/lang/String;
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v8    # "contentsHeight":I
    .end local v9    # "contentsWidth":I
    .end local v10    # "defaultContentsHeight":I
    .end local v11    # "defaultContentsWidth":I
    .end local v12    # "height":I
    .end local v13    # "paddingHeight":I
    .end local v14    # "paddingLeft":I
    .end local v15    # "paddingTop":I
    .end local v16    # "paddingWidth":I
    .end local v17    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2600()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1

    .line 954
    .restart local v10    # "defaultContentsHeight":I
    .restart local v11    # "defaultContentsWidth":I
    .restart local v13    # "paddingHeight":I
    .restart local v14    # "paddingLeft":I
    .restart local v15    # "paddingTop":I
    .restart local v16    # "paddingWidth":I
    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "badgeText":Ljava/lang/String;
    goto/16 :goto_2

    .line 962
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int/lit8 v9, v18, 0xa

    .restart local v9    # "contentsWidth":I
    goto/16 :goto_3
.end method

.method public getBadgeCount()I
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 846
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 847
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 848
    .local v7, "overlay":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 849
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getPaddingTop()I

    move-result v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2800()I

    move-result v13

    add-int v10, v12, v13

    .line 851
    .local v10, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v11

    .line 852
    .local v11, "viewWidth":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 853
    .local v8, "overlayWidth":I
    div-int/lit8 v12, v11, 0x2

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2900()I

    move-result v13

    add-int v5, v12, v13

    .line 855
    .local v5, "left":I
    add-int v12, v5, v8

    if-le v12, v11, :cond_0

    .line 856
    add-int v12, v5, v8

    sub-int/2addr v12, v11

    sub-int/2addr v5, v12

    .line 859
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getScrollX()I

    move-result v12

    add-int/2addr v5, v12

    .line 860
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v7, v5, v10, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 862
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 865
    .end local v5    # "left":I
    .end local v8    # "overlayWidth":I
    .end local v10    # "top":I
    .end local v11    # "viewWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 866
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3000()Landroid/graphics/MaskFilter;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 867
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3200()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 869
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_3

    .line 870
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 871
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 889
    :goto_0
    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 890
    new-instance v12, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v13, 0x4

    const/4 v14, 0x2

    invoke-direct {v12, v13, v14}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 894
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 895
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x2

    .line 896
    .local v9, "padding":I
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3400()I

    move-result v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3500()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v6, v12, 0x2

    .line 897
    .local v6, "outerPadding":I
    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/Rect;

    add-int v14, v9, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v9

    sub-int/2addr v15, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getHeight()I

    move-result v16

    sub-int v16, v16, v9

    move/from16 v0, v16

    invoke-direct {v13, v14, v9, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 901
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3600()Landroid/graphics/Paint;

    move-result-object v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3700()[I

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 902
    .local v4, "glow":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/Rect;

    neg-int v14, v9

    add-int/2addr v14, v6

    neg-int v15, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v16

    add-int v16, v16, v9

    sub-int v16, v16, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getHeight()I

    move-result v17

    add-int v17, v17, v9

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 906
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 909
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "glow":Landroid/graphics/Bitmap;
    .end local v6    # "outerPadding":I
    .end local v9    # "padding":I
    :cond_2
    return-void

    .line 872
    :cond_3
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide v14, 0x3fe999999999999aL    # 0.8

    cmpg-double v12, v12, v14

    if-gez v12, :cond_4

    .line 873
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 874
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 876
    :cond_4
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_5

    .line 877
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 878
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 880
    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide v14, 0x3ff4cccccccccccdL    # 1.3

    cmpg-double v12, v12, v14

    if-gez v12, :cond_6

    .line 881
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 882
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const-wide v14, 0x4055400000000000L    # 85.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x3fb999999999999aL    # 0.1

    div-double v14, v14, v16

    double-to-int v13, v14

    rsub-int v13, v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 885
    :cond_6
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 886
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0
.end method

.method public onPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    .line 913
    if-eqz p1, :cond_0

    .line 914
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    .line 915
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    .line 916
    return-void
.end method

.method public setBadgeCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 924
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    .line 925
    return-void
.end method

.method public setDistanceRatio(D)V
    .locals 1
    .param p1, "distanceRatio"    # D

    .prologue
    .line 919
    iput-wide p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    .line 920
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    .line 921
    return-void
.end method
