.class Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$4;
.super Ljava/lang/Object;
.source "MotivationalSpeechFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->initSentences(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;

.field final synthetic val$i:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$view",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$4;->val$view:Landroid/view/View;

    iput p3, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$4;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$4;->val$view:Landroid/view/View;

    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$4;->val$i:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->react(Landroid/view/View;II)V

    return-void
.end method
