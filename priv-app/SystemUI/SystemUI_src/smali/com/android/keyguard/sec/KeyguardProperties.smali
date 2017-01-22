.class public Lcom/android/keyguard/sec/KeyguardProperties;
.super Ljava/lang/Object;
.source "KeyguardProperties.java"


# static fields
.field private static final A3_PROJECT:Z

.field private static final A5X_PROJECT:Z

.field private static final A5_PROJECT:Z

.field private static final A7X_PROJECT:Z

.field private static final A7_PROJECT:Z

.field private static final A8_PROJECT:Z

.field private static final A9_PROJECT:Z

.field private static final ACG:Z

.field private static final AIO:Z

.field private static final ATT:Z

.field private static final AUSTRALIAN:Z

.field private static final BERLUTI:Z

.field private static final BMC:Z

.field private static final BST:Z

.field private static final BST_SALES:Z

.field private static final CHAGALL_PROJECT:Z

.field private static final CHN:Z

.field private static final CHN_OPEN:Z

.field private static final CMCC:Z

.field private static final CPRIME:Z

.field private static final CRI:Z

.field private static final CSP:Z

.field private static final CTC:Z

.field private static final CU:Z

.field private static final DCM:Z

.field private static final E5_PROJECT:Z

.field private static final E7_PROJECT:Z

.field private static final EUR_OPEN:Z

.field private static final FRESCO_PROJECT:Z

.field private static final GALAXY_VIEW_PROJECT:Z

.field private static final HK:Z

.field private static final HKTW:Z

.field private static final HUT:Z

.field private static final H_PROJECT:Z

.field private static final J2_PROJECT:Z

.field private static final J_PROJECT:Z

.field private static final KDI:Z

.field private static final KLIMT_PROJECT:Z

.field private static final KOO:Z

.field private static final KOR:Z

.field private static final KOR_OPEN:Z

.field private static final KTT:Z

.field private static final K_PROJECT_MR:Z

.field private static final LDU:Z

.field private static final LENTIS_PROJECT_MR:Z

.field private static final LGT:Z

.field private static final LRA:Z

.field private static final MEGA_PROJECT:Z

.field private static final MTR:Z

.field private static final NOBLE_PROJECT:Z

.field private static final OPP:Z

.field private static final OPS:Z

.field private static final PHILIPPE_PROJECT:Z

.field private static final ROYCE_PROJECT:Z

.field private static final SBM:Z

.field private static final SCAFE_NAME_AMERICANO:Ljava/lang/String; = "americano"

.field private static final SCAFE_NAME_CAPUCCINO:Ljava/lang/String; = "capuccino"

.field private static final SCAFE_NAME_DUTCH:Ljava/lang/String; = "dutch"

.field private static final SCAFE_NAME_LATTE:Ljava/lang/String; = "latte"

.field private static final SCAFE_NAME_MOCHA:Ljava/lang/String; = "mocha"

.field private static final SCAFE_SHOT_DOUBLE:Ljava/lang/String; = "double"

.field private static final SCAFE_SHOT_HALF:Ljava/lang/String; = "half"

.field private static final SCAFE_SHOT_SINGLE:Ljava/lang/String; = "single"

.field private static final SCAFE_SHOT_TRIPLE:Ljava/lang/String; = "triple"

.field private static final SCAFE_SIZE_GRANDE:Ljava/lang/String; = "grande"

.field private static final SCAFE_SIZE_SHORT:Ljava/lang/String; = "short"

.field private static final SCAFE_SIZE_TALL:Ljava/lang/String; = "tall"

.field private static final SCAFE_SIZE_VENTI:Ljava/lang/String; = "venti"

.field private static final SCAFE_SYRUP_MAPLE:Ljava/lang/String; = "maple"

.field private static final SCAFE_SYRUP_SUGAR:Ljava/lang/String; = "sugar"

.field private static final SEE:Z

.field private static final SKT:Z

.field private static final SPI:Z

.field private static final SPR:Z

.field private static final SPR_SALES:Z

.field private static final TAB_A_PROJECT:Z

.field private static final TAB_E_PROJECT:Z

.field private static final TAB_S2_PROJECT:Z

.field private static final TAG:Ljava/lang/String; = "KeyguardProperties"

.field private static final TEL:Z

.field private static final TFN:Z

.field private static final TLP:Z

.field private static final TMO:Z

.field private static final TW:Z

.field private static final TWO:Z

.field private static final T_PROJECT:Z

.field private static final USA:Z

.field private static final USA_WIFI:Z

.field private static final USCC:Z

.field private static final USE_WATER_DROPLET:Z

.field private static final VAU:Z

.field private static final VIENNA_PROJECT:Z

.field private static final VMC:Z

.field private static final VMU:Z

.field private static final VZW:Z

.field private static final XAR:Z

.field private static final XAS:Z

.field private static final XSA:Z

.field private static final ZEN_PROJECT:Z

.field private static final ZERO_PROJECT:Z

.field private static final ZIG:Z

.field private static final mBuildCharacteristics:Ljava/lang/String;

.field private static mCheckCocktailBar:Z

.field private static mCheckEnableKeyguardScreenRotation:Z

.field private static final mCountryCode:Ljava/lang/String;

.field private static mEnableScreenRotation:Z

.field private static mHasCocktailBar:Z

.field private static final mProductName:Ljava/lang/String;

.field private static final mRoamingTextNotAllowedOnDualClock:Z

.field private static mSCafeCream:Ljava/lang/String;

.field private static mSCafeExtra:Ljava/lang/String;

.field private static mSCafeName:Ljava/lang/String;

.field private static mSCafeShot:Ljava/lang/String;

.field private static mSCafeSize:Ljava/lang/String;

.field private static mSCafeSyrup:Ljava/lang/String;

.field private static final mSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    .line 40
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mCountryCode:Ljava/lang/String;

    .line 41
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    .line 42
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "spi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPI:Z

    .line 48
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "xar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAR:Z

    .line 49
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "mtr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MTR:Z

    .line 50
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "vmu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    .line 51
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "vzw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    .line 52
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "att"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "uc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "attactive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    .line 53
    const-string v0, "AIO"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    .line 54
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zig"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZIG:Z

    .line 55
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "spr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    .line 56
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, ".*tmo.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, ".*MetroPCS.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "mtr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    .line 57
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "usc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USCC:Z

    .line 58
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "bst"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST:Z

    .line 59
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tfn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TFN:Z

    .line 60
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "xas"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAS:Z

    .line 61
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "cri"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CRI:Z

    .line 62
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "csp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CSP:Z

    .line 63
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "skt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SKT:Z

    .line 64
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ktt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KTT:Z

    .line 65
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "lgt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LGT:Z

    .line 66
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CMCC:Z

    .line 67
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CU:Z

    .line 68
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ctc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CTC:Z

    .line 69
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HK:Z

    .line 70
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TW:Z

    .line 71
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HKTW:Z

    .line 72
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN_OPEN:Z

    .line 73
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "xx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->EUR_OPEN:Z

    .line 74
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "kx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR_OPEN:Z

    .line 75
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "wifiue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA_WIFI:Z

    .line 76
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "lra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LRA:Z

    .line 77
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "acg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ACG:Z

    .line 78
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "bmc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BMC:Z

    .line 79
    const-string v0, "VMC"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMC:Z

    .line 80
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USCC:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CRI:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA_WIFI:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZIG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MTR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TFN:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAS:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LRA:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ACG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CSP:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BMC:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMC:Z

    if-eqz v0, :cond_14

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA:Z

    .line 82
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN_OPEN:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CU:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CMCC:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CTC:Z

    if-eqz v0, :cond_15

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN:Z

    .line 84
    const-string v0, "PAP"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LDU:Z

    .line 85
    const-string v0, "TEL"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TEL:Z

    .line 86
    const-string v0, "VAU"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VAU:Z

    .line 87
    const-string v0, "HUT"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HUT:Z

    .line 88
    const-string v0, "BST"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST_SALES:Z

    .line 89
    const-string v0, "OPS"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPS:Z

    .line 90
    const-string v0, "OPP"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPP:Z

    .line 91
    const-string v0, "TLP"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TLP:Z

    .line 92
    const-string v0, "XSA"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XSA:Z

    .line 93
    const-string v0, "Australia"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TEL:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VAU:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HUT:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST_SALES:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPS:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPP:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TLP:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XSA:Z

    if-eqz v0, :cond_16

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AUSTRALIAN:Z

    .line 95
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TFN:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAS:Z

    if-eqz v0, :cond_17

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR_SALES:Z

    .line 97
    const-string v0, "DCM"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    .line 98
    const-string v0, "KDI"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KDI:Z

    .line 99
    const-string v0, "SBM"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SBM:Z

    .line 100
    const-string v0, "TWO"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TWO:Z

    .line 101
    const-string v0, "SEE"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SEE:Z

    .line 103
    const-string v0, "KOO"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOO:Z

    .line 104
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SKT:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KTT:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LGT:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOO:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR_OPEN:Z

    if-eqz v0, :cond_18

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR:Z

    .line 125
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    .line 126
    const-string v0, "ro.build.scafe.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSize:Ljava/lang/String;

    .line 127
    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeShot:Ljava/lang/String;

    .line 128
    const-string v0, "ro.build.scafe.syrup"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSyrup:Ljava/lang/String;

    .line 129
    const-string v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeCream:Ljava/lang/String;

    .line 130
    const-string v0, "ro.build.scafe.extra"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeExtra:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SCV31"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "marinelteuc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SC-05G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "404SC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZERO_PROJECT:Z

    .line 140
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "klte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "k3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "kmini"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "kccat6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SCL23"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SC-02G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_8
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->K_PROJECT_MR:Z

    .line 144
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "lentislte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LENTIS_PROJECT_MR:Z

    .line 146
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "slte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BERLUTI:Z

    .line 147
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "mega2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MEGA_PROJECT:Z

    .line 149
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ja3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "jsglte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "jalte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "jflte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "jftdd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "jactivelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_9
    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->J_PROJECT:Z

    .line 154
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "h3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ha3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "hlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "htdlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_a
    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->H_PROJECT:Z

    .line 157
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "hllte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "hl3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "fresco"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_b
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->FRESCO_PROJECT:Z

    .line 160
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tblte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tbelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "trlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "trhlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "trhplte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tbhplte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "trelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tre3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SC-01G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SCL24"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "muscat3calte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tre3ca"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_c
    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->T_PROJECT:Z

    .line 168
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "chagall"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHAGALL_PROJECT:Z

    .line 169
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "klimt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KLIMT_PROJECT:Z

    .line 170
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "v1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "vienna"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_d
    move v0, v2

    :goto_d
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VIENNA_PROJECT:Z

    .line 172
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "gt510"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "gt58"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "gt5note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_e
    move v0, v2

    :goto_e
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_A_PROJECT:Z

    .line 176
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "gts210"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "gts28"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_f
    move v0, v2

    :goto_f
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_S2_PROJECT:Z

    .line 178
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "gte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_E_PROJECT:Z

    .line 180
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "a9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A9_PROJECT:Z

    .line 181
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "a8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A8_PROJECT:Z

    .line 182
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "a7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A7_PROJECT:Z

    .line 183
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "a5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A5_PROJECT:Z

    .line 184
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "a3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A3_PROJECT:Z

    .line 185
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "e5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->E5_PROJECT:Z

    .line 186
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "e7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->E7_PROJECT:Z

    .line 187
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "a7x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A7X_PROJECT:Z

    .line 188
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "a5x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A5X_PROJECT:Z

    .line 190
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "noble"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->NOBLE_PROJECT:Z

    .line 191
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZEN_PROJECT:Z

    .line 193
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "cprime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CPRIME:Z

    .line 195
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "philippe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->PHILIPPE_PROJECT:Z

    .line 197
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "j2lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->J2_PROJECT:Z

    .line 199
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "gvlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "gvwifi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move v1, v2

    :cond_11
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->GALAXY_VIEW_PROJECT:Z

    .line 201
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v1, "royce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ROYCE_PROJECT:Z

    .line 206
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mRoamingTextNotAllowedOnDualClock:Z

    .line 208
    const-string v0, "WATERDROPLET, NONE, POPPINGCOLOURS"

    const-string v1, "WATERDROPLET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USE_WATER_DROPLET:Z

    return-void

    :cond_12
    move v0, v1

    .line 52
    goto/16 :goto_0

    :cond_13
    move v0, v1

    .line 56
    goto/16 :goto_1

    :cond_14
    move v0, v1

    .line 80
    goto/16 :goto_2

    :cond_15
    move v0, v1

    .line 82
    goto/16 :goto_3

    :cond_16
    move v0, v1

    .line 93
    goto/16 :goto_4

    :cond_17
    move v0, v1

    .line 95
    goto/16 :goto_5

    :cond_18
    move v0, v1

    .line 104
    goto/16 :goto_6

    :cond_19
    move v0, v1

    .line 135
    goto/16 :goto_7

    :cond_1a
    move v0, v1

    .line 140
    goto/16 :goto_8

    :cond_1b
    move v0, v1

    .line 149
    goto/16 :goto_9

    :cond_1c
    move v0, v1

    .line 154
    goto/16 :goto_a

    :cond_1d
    move v0, v1

    .line 157
    goto/16 :goto_b

    :cond_1e
    move v0, v1

    .line 160
    goto/16 :goto_c

    :cond_1f
    move v0, v1

    .line 170
    goto/16 :goto_d

    :cond_20
    move v0, v1

    .line 172
    goto/16 :goto_e

    :cond_21
    move v0, v1

    .line 176
    goto/16 :goto_f
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCocktailBar(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public static hideCameraShortCutonLegacyModel()Z
    .locals 1

    .prologue
    .line 796
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->GALAXY_VIEW_PROJECT:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideOwnerInfoOnNotification()Z
    .locals 1

    .prologue
    .line 792
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    return v0
.end method

.method public static isA5Project()Z
    .locals 1

    .prologue
    .line 521
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A5_PROJECT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A5X_PROJECT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isA7Project()Z
    .locals 1

    .prologue
    .line 533
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A7_PROJECT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A7X_PROJECT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isA8Project()Z
    .locals 1

    .prologue
    .line 537
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A8_PROJECT:Z

    return v0
.end method

.method public static isATTFeature()Z
    .locals 1

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAUSFeature()Z
    .locals 1

    .prologue
    .line 344
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AUSTRALIAN:Z

    return v0
.end method

.method public static isAmericanoLook()Z
    .locals 2

    .prologue
    .line 255
    const-string v0, "americano"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAutoWipeFeature()Z
    .locals 1

    .prologue
    .line 360
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    return v0
.end method

.method public static isBigFontModelinEasyMode()Z
    .locals 1

    .prologue
    .line 711
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBrilliantCutSpecialTypeEnabled()Z
    .locals 1

    .prologue
    .line 642
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHAGALL_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KLIMT_PROJECT:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCMCCModel()Z
    .locals 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CMCC:Z

    return v0
.end method

.method public static isCTCModel()Z
    .locals 1

    .prologue
    .line 296
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CTC:Z

    return v0
.end method

.method public static isCUModel()Z
    .locals 1

    .prologue
    .line 304
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CU:Z

    return v0
.end method

.method public static isChinaFeature()Z
    .locals 1

    .prologue
    .line 284
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN:Z

    return v0
.end method

.method public static isClockMovedByWeatherVisiblity()Z
    .locals 1

    .prologue
    .line 634
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    return v0
.end method

.method public static isCurrentLanguageArabic()Z
    .locals 2

    .prologue
    .line 756
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "curLanguage":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    :cond_0
    const/4 v1, 0x1

    .line 760
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDCMModel()Z
    .locals 1

    .prologue
    .line 320
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    return v0
.end method

.method public static isDcmLauncher(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 727
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncherWithoutSecure(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->isNoneSecureLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDcmLauncherWithoutSecure(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 731
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    if-eqz v0, :cond_0

    const-string v0, "com.nttdocomo.android.dhome"

    invoke-static {p0, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDirectCallToEcc()Z
    .locals 1

    .prologue
    .line 374
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AUSTRALIAN:Z

    return v0
.end method

.method public static isDisplayDualImsi(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 582
    const-string v1, "LGT"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 585
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v1, "KeyguardProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisplayDualImsi isNetworkRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    const/4 v1, 0x1

    .line 592
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDownloadableThemeApplied(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    const/4 v1, 0x1

    .line 752
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDualClockCenterAlign(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA7Project()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA5Project()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isE5Project()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isE7Project()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDualLCDDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 800
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDualLCDFolderDevice(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 808
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isE5Project()Z
    .locals 1

    .prologue
    .line 525
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->E5_PROJECT:Z

    return v0
.end method

.method public static isE7Project()Z
    .locals 1

    .prologue
    .line 529
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->E7_PROJECT:Z

    return v0
.end method

.method public static isEffectProcessSeparated()Z
    .locals 1

    .prologue
    .line 707
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->PHILIPPE_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A8_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->J2_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ROYCE_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A3_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A5_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A7_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A9_PROJECT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFolderDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 804
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFolderOpened(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 812
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 813
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    .line 814
    const-string v2, "KeyguardProperties"

    const-string v3, "isFolderOpened: Folder is opened"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_0
    return v1

    .line 816
    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 817
    const-string v1, "KeyguardProperties"

    const-string v2, "isFolderOpened: Folder is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 818
    :cond_2
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-nez v1, :cond_1

    .line 819
    const-string v1, "KeyguardProperties"

    const-string v2, "isFolderOpened: HardKeyboard setting is undefined"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isFrescoProject()Z
    .locals 1

    .prologue
    .line 501
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->FRESCO_PROJECT:Z

    return v0
.end method

.method public static isGENIFeature()Z
    .locals 2

    .prologue
    .line 667
    const-string v0, "TNZ"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TNG"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    :cond_0
    const/4 v0, 0x1

    .line 669
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHKFeature()Z
    .locals 1

    .prologue
    .line 288
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HK:Z

    return v0
.end method

.method public static isHKTWFeature()Z
    .locals 2

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HK:Z

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->TW:Z

    or-int/2addr v0, v1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->HKTW:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public static isHProject()Z
    .locals 1

    .prologue
    .line 497
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->H_PROJECT:Z

    return v0
.end method

.method public static isIgnoreNationalRoaming()Z
    .locals 2

    .prologue
    .line 412
    const-string v0, "XEO"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRT"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VAU"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVodafoneAUWithXSA()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNationalRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    const-string v0, "KeyguardProperties"

    const-string v1, "isIgnoreNationalRoaming() = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x1

    .line 418
    :goto_0
    return v0

    .line 417
    :cond_1
    const-string v0, "KeyguardProperties"

    const-string v1, "isIgnoreNationalRoaming() = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJProject()Z
    .locals 1

    .prologue
    .line 493
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->J_PROJECT:Z

    return v0
.end method

.method public static isJapanFeature()Z
    .locals 2

    .prologue
    .line 312
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->KDI:Z

    or-int/2addr v0, v1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->SBM:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public static isKDIModel()Z
    .locals 1

    .prologue
    .line 316
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KDI:Z

    return v0
.end method

.method public static isKModelWeatherDeamon()Z
    .locals 1

    .prologue
    .line 630
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA7Project()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA5Project()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMegaProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isE5Project()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isE7Project()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKProject()Z
    .locals 1

    .prologue
    .line 505
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->K_PROJECT_MR:Z

    return v0
.end method

.method public static isKoreaFeature()Z
    .locals 1

    .prologue
    .line 324
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR:Z

    return v0
.end method

.method public static isKttModel()Z
    .locals 1

    .prologue
    .line 332
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KTT:Z

    return v0
.end method

.method public static isLatestPhoneUX()Z
    .locals 2

    .prologue
    .line 275
    const-string v0, "capuccino"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLatestShortcutEffect()Z
    .locals 1

    .prologue
    .line 723
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLatestTabletUX()Z
    .locals 2

    .prologue
    .line 267
    const-string v0, "latte"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLatestUSAShortCutVI()Z
    .locals 1

    .prologue
    .line 682
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->NOBLE_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZEN_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_S2_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_E_PROJECT:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLatestUX()Z
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLegacyTabletUX()Z
    .locals 2

    .prologue
    .line 263
    const-string v0, "mocha"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLegacyUX()Z
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mocha"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLgtModel()Z
    .locals 1

    .prologue
    .line 336
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LGT:Z

    return v0
.end method

.method public static isLowFestival()Z
    .locals 1

    .prologue
    .line 565
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LENTIS_PROJECT_MR:Z

    return v0
.end method

.method public static isMegaProject()Z
    .locals 1

    .prologue
    .line 541
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MEGA_PROJECT:Z

    return v0
.end method

.method public static isMobileKeyboardCovered(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 825
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 826
    .local v0, "conf":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    .line 830
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMovableAffordance()Z
    .locals 1

    .prologue
    .line 673
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    return v0
.end method

.method public static isMultiSIMDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 378
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNationalRoaming()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 432
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "simNumeric":Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "plmnNumeric":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 436
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "simMCC":Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 441
    const/4 v4, 0x1

    .line 447
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method public static isNationalRoamingForTWO(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 425
    .local v0, "mPhone":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "21901"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->TWO:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->SEE:Z

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    const/4 v1, 0x1

    .line 428
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNeedLockscreenCapture()Z
    .locals 2

    .prologue
    .line 769
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_SAVE_CAPTURE_FILE_FOR_WALLPAPER_PREVIEW"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNobleProject()Z
    .locals 1

    .prologue
    .line 549
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->NOBLE_PROJECT:Z

    return v0
.end method

.method public static isNotRequireSIMPUKCode()Z
    .locals 1

    .prologue
    .line 356
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    return v0
.end method

.method public static isOneHandOperationEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "isInteractionAreaEnabled":Z
    const/4 v1, 0x0

    .line 481
    .local v1, "isOneHandPatternEnabled":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isOneStepUnlockNotAllowed()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public static isPhoneShortcutEnable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 554
    .local v0, "isEmergencyCallCapable":Z
    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "set_shortcuts_phone"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 558
    .local v1, "isPhoneShortcutOn":Z
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/keyguard/sec/KeyguardProperties;->USA:Z

    if-eqz v4, :cond_1

    :cond_0
    move v3, v2

    .line 561
    .end local v1    # "isPhoneShortcutOn":Z
    :cond_1
    return v3

    :cond_2
    move v1, v3

    .line 555
    goto :goto_0
.end method

.method public static isPoorPerformanceModel()Z
    .locals 1

    .prologue
    .line 842
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A8_PROJECT:Z

    return v0
.end method

.method public static isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 735
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 739
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPresidentialCMASFeature()Z
    .locals 1

    .prologue
    .line 352
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    return v0
.end method

.method public static isPreviewShortcutEnabled()Z
    .locals 2

    .prologue
    .line 715
    const-string v0, "Layout"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    const/4 v0, 0x1

    .line 719
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRemoveCircleViewArrow()Z
    .locals 1

    .prologue
    .line 677
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRichLockEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 461
    const-string v0, "com.samsung.android.keyguardwallpaperupdator"

    .line 462
    .local v0, "RICH_LOCK_PKG_NAME":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 463
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 465
    .local v2, "pkginfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.samsung.android.keyguardwallpaperupdator"

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 466
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 468
    :cond_0
    :goto_0
    return v4

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isRoamingTextNotAllowedOnDualClock()Z
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mRoamingTextNotAllowedOnDualClock:Z

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .locals 1

    .prologue
    .line 658
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TEL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSPRModel()Z
    .locals 1

    .prologue
    .line 596
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR_SALES:Z

    return v0
.end method

.method public static isSPRPLMN()Z
    .locals 1

    .prologue
    .line 743
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    return v0
.end method

.method public static isShowHighLowTemp()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimpleHelpText()Z
    .locals 1

    .prologue
    .line 638
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleClockCenterAlign(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 569
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA7Project()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA5Project()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isE5Project()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isE7Project()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSktModel()Z
    .locals 1

    .prologue
    .line 328
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SKT:Z

    return v0
.end method

.method public static isSupportActivityZoneLaunch()Z
    .locals 2

    .prologue
    .line 777
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v1, "marinelteuc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportBlendedFilter()Z
    .locals 1

    .prologue
    .line 600
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CPRIME:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportEdgeNotification()Z
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportElasticPlugin()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportLongShadowEffect(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "isLongShadowEnabled":Z
    const-string v1, "LONGSHADOW"

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCurrentLanguageArabic()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 248
    :cond_0
    return v0
.end method

.method public static isSupportMobileKeyboard()Z
    .locals 2

    .prologue
    .line 788
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportPhoneShortcutOnLDU()Z
    .locals 1

    .prologue
    .line 764
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LDU:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPreviewBackwardAnimation()Z
    .locals 1

    .prologue
    .line 838
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    return v0
.end method

.method public static isSupportUnpackMode()Z
    .locals 2

    .prologue
    .line 702
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTMOModel()Z
    .locals 1

    .prologue
    .line 662
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    return v0
.end method

.method public static isTProject()Z
    .locals 1

    .prologue
    .line 509
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->T_PROJECT:Z

    return v0
.end method

.method public static isTabAProject()Z
    .locals 1

    .prologue
    .line 517
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_A_PROJECT:Z

    return v0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 271
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUSAFeature()Z
    .locals 1

    .prologue
    .line 340
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA:Z

    return v0
.end method

.method public static isUSIMPersoFeatureEnable()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public static isVZWModel()Z
    .locals 1

    .prologue
    .line 577
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    return v0
.end method

.method public static isVodafoneAUWithXSA()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 451
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "simNumeric":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    const-string v2, "50503"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "XSA"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 457
    :cond_0
    return v1
.end method

.method public static isWirelessChargingAnimationEnabled()Z
    .locals 1

    .prologue
    .line 846
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZERO_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZEN_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->NOBLE_PROJECT:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZenProject()Z
    .locals 1

    .prologue
    .line 545
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZEN_PROJECT:Z

    return v0
.end method

.method public static isZeroProject()Z
    .locals 1

    .prologue
    .line 513
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZERO_PROJECT:Z

    return v0
.end method

.method public static shortcutLaunchOnRelease()Z
    .locals 1

    .prologue
    .line 834
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    return v0
.end method

.method public static shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 693
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mCheckEnableKeyguardScreenRotation:Z

    if-nez v2, :cond_2

    .line 694
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mCheckEnableKeyguardScreenRotation:Z

    .line 695
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mEnableScreenRotation:Z

    .line 698
    :cond_2
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mEnableScreenRotation:Z

    return v0
.end method

.method public static shouldNotShowArrowHorizontal()Z
    .locals 1

    .prologue
    .line 654
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KLIMT_PROJECT:Z

    return v0
.end method

.method public static shouldNotShowArrowVertical()Z
    .locals 1

    .prologue
    .line 650
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHAGALL_PROJECT:Z

    return v0
.end method

.method public static shouldRotateCameraIcon()Z
    .locals 1

    .prologue
    .line 646
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VIENNA_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHAGALL_PROJECT:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowNaviBarWithSIP()Z
    .locals 1

    .prologue
    .line 850
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->GALAXY_VIEW_PROJECT:Z

    return v0
.end method

.method public static shouldShowPopupForDualClock(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 385
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v5

    .line 388
    :cond_1
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 391
    .local v3, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "my_profile_enabled"

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 393
    .local v2, "isProfileOn":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 395
    .local v0, "isDualClockOn":Z
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "homecity_timezone"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    move v1, v4

    .line 398
    .local v1, "isHometimeExist":Z
    :goto_3
    const-string v6, "KeyguardProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is Romaing on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n dualClock on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n is homtime null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n isProfile on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isIgnoreNationalRoaming()Z

    move-result v6

    if-nez v6, :cond_0

    .line 403
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 404
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    :goto_4
    move v5, v4

    goto/16 :goto_0

    .end local v0    # "isDualClockOn":Z
    .end local v1    # "isHometimeExist":Z
    .end local v2    # "isProfileOn":Z
    :cond_2
    move v2, v5

    .line 391
    goto :goto_1

    .restart local v2    # "isProfileOn":Z
    :cond_3
    move v0, v5

    .line 393
    goto :goto_2

    .restart local v0    # "isDualClockOn":Z
    :cond_4
    move v1, v5

    .line 395
    goto :goto_3

    .restart local v1    # "isHometimeExist":Z
    :cond_5
    move v4, v5

    .line 404
    goto :goto_4

    .line 406
    :cond_6
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    :goto_5
    move v5, v4

    goto/16 :goto_0

    :cond_7
    move v4, v5

    goto :goto_5
.end method

.method public static useBigClockWithNoti()Z
    .locals 1

    .prologue
    .line 604
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useIndependentLockTimeout()Z
    .locals 1

    .prologue
    .line 369
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useLatestPinView()Z
    .locals 1

    .prologue
    .line 686
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usePatternBGEffect(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 611
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->FRESCO_PROJECT:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->H_PROJECT:Z

    if-eqz v1, :cond_1

    .line 613
    :cond_0
    const-string v1, "WATERDROPLET, NONE, POPPINGCOLOURS"

    const-string v2, "WATERCOLOUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    const/4 v0, 0x1

    .line 625
    :cond_1
    return v0
.end method

.method public static useWaterDropletEffect(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 773
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USE_WATER_DROPLET:Z

    return v0
.end method
