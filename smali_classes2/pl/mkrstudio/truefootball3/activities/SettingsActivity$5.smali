.class Lpl/mkrstudio/truefootball3/activities/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/SettingsActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$sp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$5;->this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$5;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentView",
            "selectedItemView",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 154
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$5;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$5;->this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->currencyNames:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string p4, "currencyName"

    invoke-interface {p1, p4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SettingsActivity$5;->this$0:Lpl/mkrstudio/truefootball3/activities/SettingsActivity;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/activities/SettingsActivity;->currencyModifiers:[D

    aget-wide p3, p2, p3

    double-to-float p2, p3

    const-string p3, "currencyModifier"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
