.class Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;
.super Ljava/lang/Object;
.source "SelectCountriesDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;Ljava/text/Collator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$collator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 64
    check-cast p1, Ljava/lang/String;

    .line 65
    check-cast p2, Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;->val$collator:Ljava/text/Collator;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    .line 67
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/dialogs/SelectCountriesDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
