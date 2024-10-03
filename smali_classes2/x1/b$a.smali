.class final Lx1/b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/b;->n(Landroid/view/View;Lc2/e;Lw1/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.ActionResponsive$handlePendingIntentAction$1"
    f = "ActionResponsive.kt"
    l = {
        0xdd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lc2/e;

.field final synthetic i:Lx1/b;

.field final synthetic j:Landroid/view/View;

.field final synthetic k:Lw1/a;


# direct methods
.method constructor <init>(Lc2/e;Lx1/b;Landroid/view/View;Lw1/a;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc2/e;",
            "Lx1/b;",
            "Landroid/view/View;",
            "Lw1/a;",
            "Lq5/d<",
            "-",
            "Lx1/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx1/b$a;->h:Lc2/e;

    iput-object p2, p0, Lx1/b$a;->i:Lx1/b;

    iput-object p3, p0, Lx1/b$a;->j:Landroid/view/View;

    iput-object p4, p0, Lx1/b$a;->k:Lw1/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance p1, Lx1/b$a;

    iget-object v1, p0, Lx1/b$a;->h:Lc2/e;

    iget-object v2, p0, Lx1/b$a;->i:Lx1/b;

    iget-object v3, p0, Lx1/b$a;->j:Landroid/view/View;

    iget-object v4, p0, Lx1/b$a;->k:Lw1/a;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lx1/b$a;-><init>(Lc2/e;Lx1/b;Landroid/view/View;Lw1/a;Lq5/d;)V

    return-object p1
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx1/b$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lx1/b$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lx1/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lx1/b$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lx1/b$a;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lx1/b$a;->h:Lc2/e;

    iget-object v1, p0, Lx1/b$a;->i:Lx1/b;

    invoke-static {v1}, Lx1/b;->l(Lx1/b;)Lx1/k;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc2/e;->b(Lx1/k;)Landroid/app/PendingIntent;

    move-result-object p1

    sget-object v1, Lh2/a;->a:Lh2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle pendingIntent, creatorPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Parse"

    invoke-virtual {v1, v5, v3}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object v1, p0, Lx1/b$a;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_4

    iget-object v1, p0, Lx1/b$a;->k:Lw1/a;

    iget-object v3, p0, Lx1/b$a;->j:Landroid/view/View;

    invoke-static {}, Li6/b1;->c()Li6/g2;

    move-result-object v5

    invoke-virtual {v5}, Li6/g2;->k()Li6/g2;

    move-result-object v5

    new-instance v6, Lx1/b$a$a;

    invoke-direct {v6, v1, v3, p1, v4}, Lx1/b$a$a;-><init>(Lw1/a;Landroid/view/View;Landroid/app/PendingIntent;Lq5/d;)V

    iput v2, p0, Lx1/b$a;->g:I

    invoke-static {v5, v6, p0}, Li6/h;->e(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
