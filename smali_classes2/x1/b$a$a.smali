.class final Lx1/b$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nothing.cardparser.parser.ActionResponsive$handlePendingIntentAction$1$2$1"
    f = "ActionResponsive.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lw1/a;

.field final synthetic i:Landroid/view/View;

.field final synthetic j:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lw1/a;Landroid/view/View;Landroid/app/PendingIntent;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw1/a;",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            "Lq5/d<",
            "-",
            "Lx1/b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx1/b$a$a;->h:Lw1/a;

    iput-object p2, p0, Lx1/b$a$a;->i:Landroid/view/View;

    iput-object p3, p0, Lx1/b$a$a;->j:Landroid/app/PendingIntent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 2
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

    new-instance p1, Lx1/b$a$a;

    iget-object v0, p0, Lx1/b$a$a;->h:Lw1/a;

    iget-object v1, p0, Lx1/b$a$a;->i:Landroid/view/View;

    iget-object p0, p0, Lx1/b$a$a;->j:Landroid/app/PendingIntent;

    invoke-direct {p1, v0, v1, p0, p2}, Lx1/b$a$a;-><init>(Lw1/a;Landroid/view/View;Landroid/app/PendingIntent;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lx1/b$a$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lx1/b$a$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lx1/b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lx1/b$a$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lx1/b$a$a;->g:I

    if-nez v0, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lx1/b$a$a;->h:Lw1/a;

    iget-object v0, p0, Lx1/b$a$a;->i:Landroid/view/View;

    iget-object p0, p0, Lx1/b$a$a;->j:Landroid/app/PendingIntent;

    sget-object v1, Lw1/b;->a:Lw1/b;

    invoke-virtual {v1, v0}, Lw1/b;->a(Landroid/view/View;)Ln5/k;

    move-result-object v1

    invoke-interface {p1, v0, p0, v1}, Lw1/a;->onCardInteraction(Landroid/view/View;Landroid/app/PendingIntent;Ln5/k;)Z

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
