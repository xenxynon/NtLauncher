.class final synthetic Lkotlinx/coroutines/flow/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ly5/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/l$b;->g:Lkotlinx/coroutines/flow/l$b;

    sput-object v0, Lkotlinx/coroutines/flow/l;->a:Ly5/l;

    sget-object v0, Lkotlinx/coroutines/flow/l$a;->g:Lkotlinx/coroutines/flow/l$a;

    sput-object v0, Lkotlinx/coroutines/flow/l;->b:Ly5/p;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/flow/e;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/flow/c0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/flow/l;->a:Ly5/l;

    sget-object v1, Lkotlinx/coroutines/flow/l;->b:Ly5/p;

    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/flow/l;->b(Lkotlinx/coroutines/flow/e;Ly5/l;Ly5/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final b(Lkotlinx/coroutines/flow/e;Ly5/l;Ly5/p;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Ly5/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Ly5/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/flow/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/flow/d;

    iget-object v1, v0, Lkotlinx/coroutines/flow/d;->h:Ly5/l;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lkotlinx/coroutines/flow/d;->i:Ly5/p;

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/d;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/flow/d;-><init>(Lkotlinx/coroutines/flow/e;Ly5/l;Ly5/p;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
