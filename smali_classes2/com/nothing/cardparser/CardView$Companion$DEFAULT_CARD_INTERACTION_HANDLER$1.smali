.class public final Lcom/nothing/cardparser/CardView$Companion$DEFAULT_CARD_INTERACTION_HANDLER$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardparser/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardInteraction(Landroid/view/View;Landroid/app/PendingIntent;Ln5/k;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            "Ln5/k<",
            "+",
            "Landroid/content/Intent;",
            "+",
            "Landroid/app/ActivityOptions;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pendingIntent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/nothing/cardparser/CardView;->Companion:Lcom/nothing/cardparser/CardView$Companion;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nothing/cardparser/CardView$Companion;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Ln5/k;)Z

    move-result p0

    return p0
.end method
