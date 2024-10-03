.class final Ll6/k$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/k$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic g:Lk6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/f<",
            "Lo5/z<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic h:I


# direct methods
.method constructor <init>(Lk6/f;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/f<",
            "Lo5/z<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Ll6/k$a$a$a;->g:Lk6/f;

    iput p2, p0, Ll6/k$a$a$a;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ll6/k$a$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ll6/k$a$a$a$a;

    iget v1, v0, Ll6/k$a$a$a$a;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ll6/k$a$a$a$a;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Ll6/k$a$a$a$a;

    invoke-direct {v0, p0, p2}, Ll6/k$a$a$a$a;-><init>(Ll6/k$a$a$a;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Ll6/k$a$a$a$a;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ll6/k$a$a$a$a;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Ll6/k$a$a$a;->g:Lk6/f;

    new-instance v2, Lo5/z;

    iget p0, p0, Ll6/k$a$a$a;->h:I

    invoke-direct {v2, p0, p1}, Lo5/z;-><init>(ILjava/lang/Object;)V

    iput v4, v0, Ll6/k$a$a$a$a;->i:I

    invoke-interface {p2, v2, v0}, Lk6/z;->C(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iput v3, v0, Ll6/k$a$a$a$a;->i:I

    invoke-static {v0}, Li6/z2;->a(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
