.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;
.super Ljava/lang/Object;
.source "SMultiWindowReflator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiWindowStyle"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static OPTION_SCALE:I

.field public static TYPE_CASCADE:I

.field public static TYPE_NORMAL:I

.field public static TYPE_SPLIT:I

.field public static ZONE_A:I

.field public static ZONE_B:I

.field public static ZONE_C:I

.field public static ZONE_D:I

.field public static ZONE_E:I

.field public static ZONE_F:I

.field public static ZONE_FULL:I

.field public static ZONE_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 214
    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "TYPE_NORMAL"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "TYPE_SPLIT"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "TYPE_CASCADE"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ZONE_UNKNOWN"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "ZONE_A"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "ZONE_B"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "ZONE_C"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "ZONE_D"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "ZONE_E"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "ZONE_F"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "ZONE_FULL"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "OPTION_SCALE"

    aput-object v6, v4, v5

    sput-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    .line 230
    sget-object v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 231
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 233
    :try_start_0
    const-class v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    sget-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 235
    .local v3, "src":Ljava/lang/reflect/Field;
    const-class v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;

    sget-object v5, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 236
    .local v1, "dst":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "dst":Ljava/lang/reflect/Field;
    .end local v3    # "src":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-void

    .line 239
    :catch_0
    move-exception v4

    goto :goto_1

    .line 238
    :catch_1
    move-exception v4

    goto :goto_1

    .line 237
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
