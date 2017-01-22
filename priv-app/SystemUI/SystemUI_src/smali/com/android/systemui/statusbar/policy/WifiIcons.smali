.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field static final QS_WIFI_NO_NETWORK:I = 0x7f02010e

.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_CALLING_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_NO_NETWORK:I = 0x7f0204fd

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

.field static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I

.field static final WIFI_SIGNAL_STRENGTH_NOT_LOGIN_CAPTIVE:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 22
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 54
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    .line 68
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    .line 81
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 96
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    .line 111
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_NOT_LOGIN_CAPTIVE:[[I

    .line 125
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    return-void

    .line 22
    :array_0
    .array-data 4
        0x7f0204ee
        0x7f0204f1
        0x7f0204f4
        0x7f0204f7
        0x7f0204fa
    .end array-data

    :array_1
    .array-data 4
        0x7f0204ef
        0x7f0204f2
        0x7f0204f5
        0x7f0204f8
        0x7f0204fb
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x7f0201fb
        0x7f0201fc
        0x7f0201fd
        0x7f0201fe
        0x7f0201ff
    .end array-data

    :array_3
    .array-data 4
        0x7f0201fb
        0x7f0201fc
        0x7f0201fd
        0x7f0201fe
        0x7f0201ff
    .end array-data

    .line 54
    :array_4
    .array-data 4
        0x7f0204e9
        0x7f0204ea
        0x7f0204eb
        0x7f0204ec
        0x7f0204ed
    .end array-data

    :array_5
    .array-data 4
        0x7f0204e9
        0x7f0204ea
        0x7f0204eb
        0x7f0204ec
        0x7f0204ed
    .end array-data

    .line 68
    :array_6
    .array-data 4
        0x7f0204f0
        0x7f0204f3
        0x7f0204f6
        0x7f0204f9
        0x7f0204fc
    .end array-data

    :array_7
    .array-data 4
        0x7f0204f0
        0x7f0204f3
        0x7f0204f6
        0x7f0204f9
        0x7f0204fc
    .end array-data

    .line 81
    :array_8
    .array-data 4
        0x7f0204d4
        0x7f0204d5
        0x7f0204d6
        0x7f0204d7
        0x7f0204d8
    .end array-data

    :array_9
    .array-data 4
        0x7f0204d4
        0x7f0204d5
        0x7f0204d6
        0x7f0204d7
        0x7f0204d8
    .end array-data

    .line 96
    :array_a
    .array-data 4
        0x7f02032c
        0x7f02032d
        0x7f02032e
        0x7f02032f
        0x7f020330
    .end array-data

    :array_b
    .array-data 4
        0x7f02032c
        0x7f02032d
        0x7f02032e
        0x7f02032f
        0x7f020330
    .end array-data

    .line 111
    :array_c
    .array-data 4
        0x7f0204e4
        0x7f0204e5
        0x7f0204e6
        0x7f0204e7
        0x7f0204e8
    .end array-data

    :array_d
    .array-data 4
        0x7f0204e4
        0x7f0204e5
        0x7f0204e6
        0x7f0204e7
        0x7f0204e8
    .end array-data

    .line 125
    :array_e
    .array-data 4
        0x7f0204df
        0x7f0204e0
        0x7f0204e1
        0x7f0204e2
        0x7f0204e3
    .end array-data

    :array_f
    .array-data 4
        0x7f0204df
        0x7f0204e0
        0x7f0204e1
        0x7f0204e2
        0x7f0204e3
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
