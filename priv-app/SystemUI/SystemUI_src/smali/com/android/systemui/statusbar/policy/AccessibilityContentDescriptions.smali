.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIFI_NO_CONNECTION:I = 0x7f0a0232


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        0x7f0a0225
        0x7f0a0226
        0x7f0a0227
        0x7f0a0228
        0x7f0a022b
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f0a022c
        0x7f0a022d
        0x7f0a022e
        0x7f0a022f
        0x7f0a0230
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f0a0232
        0x7f0a0233
        0x7f0a0234
        0x7f0a0235
        0x7f0a0236
    .end array-data

    .line 40
    :array_3
    .array-data 4
        0x7f0a0225
        0x7f0a0226
        0x7f0a0227
        0x7f0a0228
        0x7f0a0229
        0x7f0a022b
    .end array-data

    .line 49
    :array_4
    .array-data 4
        0x7f0a0225
        0x7f0a0226
        0x7f0a0227
        0x7f0a0228
        0x7f0a0229
        0x7f0a022a
        0x7f0a022b
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
