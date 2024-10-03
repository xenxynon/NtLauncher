.class final Lcom/nothing/cardhost/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardhost/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/nothing/cardhost/a;

.field private final b:Z

.field final synthetic c:Lcom/nothing/cardhost/e;


# direct methods
.method public constructor <init>(Lcom/nothing/cardhost/e;Lcom/nothing/cardhost/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/cardhost/a;",
            "Z)V"
        }
    .end annotation

    const-string v0, "cardView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nothing/cardhost/e$c;->a:Lcom/nothing/cardhost/a;

    iput-boolean p3, p0, Lcom/nothing/cardhost/e$c;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lx1/q$a;->a(Lx1/q;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nothing/cardhost/e;->k(Lcom/nothing/cardhost/e;I)V

    iget-object v0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-static {v0, p1}, Lcom/nothing/cardhost/e;->m(Lcom/nothing/cardhost/e;Landroid/view/View;)V

    iget-object v0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-static {v0, p2}, Lcom/nothing/cardhost/e;->n(Lcom/nothing/cardhost/e;Landroid/view/View;)V

    iget-object v0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-static {v0}, Lcom/nothing/cardhost/e;->f(Lcom/nothing/cardhost/e;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iget-object v1, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    iget-boolean v2, p0, Lcom/nothing/cardhost/e$c;->b:Z

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/nothing/cardhost/e;->d(Lcom/nothing/cardhost/e;Landroid/view/View;ZLjava/lang/Throwable;)V

    iget-object v0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-static {v0, v3}, Lcom/nothing/cardhost/e;->l(Lcom/nothing/cardhost/e;Landroid/os/CancellationSignal;)V

    iget-object v0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-static {v0}, Lcom/nothing/cardhost/e;->f(Lcom/nothing/cardhost/e;)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/nothing/cardhost/e;->C(Landroid/view/View;Landroid/view/View;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call back content parse successfully. normalView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",simpleView = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", style = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-static {p0}, Lcom/nothing/cardhost/e;->f(Lcom/nothing/cardhost/e;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardWidgetHostView"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 11

    iget-boolean v0, p0, Lcom/nothing/cardhost/e$c;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    iget-object v3, p0, Lcom/nothing/cardhost/e$c;->a:Lcom/nothing/cardhost/a;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    new-instance v6, Lcom/nothing/cardhost/e$c;

    iget-object v7, p0, Lcom/nothing/cardhost/e$c;->a:Lcom/nothing/cardhost/a;

    invoke-direct {v6, v5, v7, v1}, Lcom/nothing/cardhost/e$c;-><init>(Lcom/nothing/cardhost/e;Lcom/nothing/cardhost/a;Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/nothing/cardparser/ICardView$DefaultImpls;->applyAsync$default(Lcom/nothing/cardparser/ICardView;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/q;Lx1/e;Lw1/a;ILjava/lang/Object;)Landroid/os/CancellationSignal;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nothing/cardhost/e;->l(Lcom/nothing/cardhost/e;Landroid/os/CancellationSignal;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-static {v0, v2, v1, p1}, Lcom/nothing/cardhost/e;->d(Lcom/nothing/cardhost/e;Landroid/view/View;ZLjava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-static {v0, v2}, Lcom/nothing/cardhost/e;->l(Lcom/nothing/cardhost/e;Landroid/os/CancellationSignal;)V

    iget-object p0, p0, Lcom/nothing/cardhost/e$c;->c:Lcom/nothing/cardhost/e;

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/e;->B(Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call back parser content error, e = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardWidgetHostView"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
