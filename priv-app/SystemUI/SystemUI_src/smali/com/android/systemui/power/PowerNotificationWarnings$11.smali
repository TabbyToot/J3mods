.class Lcom/android/systemui/power/PowerNotificationWarnings$11;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showIncompatibleChargerNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

.field final synthetic val$abnormalChargingSharedPrefs:Landroid/content/SharedPreferences;

.field final synthetic val$disableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->val$abnormalChargingSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1744
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1745
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$11;->val$abnormalChargingSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1746
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "DoNotShowIncompatibleChargerWarning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1747
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1749
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
