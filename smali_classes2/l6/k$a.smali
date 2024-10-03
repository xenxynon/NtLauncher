.class final Ll6/k$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/k;->a(Lkotlinx/coroutines/flow/f;[Lkotlinx/coroutines/flow/e;Ly5/a;Ly5/q;Lq5/d;)Ljava/lang/Object;
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
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:I

.field j:I

.field k:I

.field private synthetic l:Ljava/lang/Object;

.field final synthetic m:[Lkotlinx/coroutines/flow/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic n:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "[TT;>;"
        }
    .end annotation
.end field

.field final synthetic o:Ly5/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/q<",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;[TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic p:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/e;Ly5/a;Ly5/q;Lkotlinx/coroutines/flow/f;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Ly5/a<",
            "[TT;>;",
            "Ly5/q<",
            "-",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;-[TT;-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;",
            "Lq5/d<",
            "-",
            "Ll6/k$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ll6/k$a;->m:[Lkotlinx/coroutines/flow/e;

    iput-object p2, p0, Ll6/k$a;->n:Ly5/a;

    iput-object p3, p0, Ll6/k$a;->o:Ly5/q;

    iput-object p4, p0, Ll6/k$a;->p:Lkotlinx/coroutines/flow/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 7
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

    new-instance v6, Ll6/k$a;

    iget-object v1, p0, Ll6/k$a;->m:[Lkotlinx/coroutines/flow/e;

    iget-object v2, p0, Ll6/k$a;->n:Ly5/a;

    iget-object v3, p0, Ll6/k$a;->o:Ly5/q;

    iget-object v4, p0, Ll6/k$a;->p:Lkotlinx/coroutines/flow/f;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ll6/k$a;-><init>([Lkotlinx/coroutines/flow/e;Ly5/a;Ly5/q;Lkotlinx/coroutines/flow/f;Lq5/d;)V

    iput-object p1, v6, Ll6/k$a;->l:Ljava/lang/Object;

    return-object v6
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

    invoke-virtual {p0, p1, p2}, Ll6/k$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Ll6/k$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Ll6/k$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Ll6/k$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ll6/k$a;->k:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v2, v0, Ll6/k$a;->j:I

    iget v3, v0, Ll6/k$a;->i:I

    iget-object v7, v0, Ll6/k$a;->h:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Ll6/k$a;->g:Ljava/lang/Object;

    check-cast v8, Lk6/f;

    iget-object v9, v0, Ll6/k$a;->l:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ln5/m;->b(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    goto/16 :goto_2

    :cond_2
    iget v2, v0, Ll6/k$a;->j:I

    iget v3, v0, Ll6/k$a;->i:I

    iget-object v7, v0, Ll6/k$a;->h:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Ll6/k$a;->g:Ljava/lang/Object;

    check-cast v8, Lk6/f;

    iget-object v9, v0, Ll6/k$a;->l:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lk6/j;

    invoke-virtual {v10}, Lk6/j;->l()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v23, v7

    move v7, v2

    move-object/from16 v2, v23

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Ll6/k$a;->l:Ljava/lang/Object;

    check-cast v2, Li6/m0;

    iget-object v7, v0, Ll6/k$a;->m:[Lkotlinx/coroutines/flow/e;

    array-length v13, v7

    if-nez v13, :cond_4

    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0

    :cond_4
    new-array v14, v13, [Ljava/lang/Object;

    sget-object v8, Ll6/s;->b:Lkotlinx/coroutines/internal/b0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v14

    invoke-static/range {v7 .. v12}, Lo5/c;->g([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v13, v8, v8, v7, v8}, Lk6/i;->b(ILk6/e;Ly5/l;ILjava/lang/Object;)Lk6/f;

    move-result-object v21

    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v7, v3

    :goto_1
    if-ge v7, v13, :cond_5

    add-int/lit8 v22, v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ll6/k$a$a;

    iget-object v11, v0, Ll6/k$a;->m:[Lkotlinx/coroutines/flow/e;

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v16, v11

    move/from16 v17, v7

    move-object/from16 v18, v12

    move-object/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Ll6/k$a$a;-><init>([Lkotlinx/coroutines/flow/e;ILjava/util/concurrent/atomic/AtomicInteger;Lk6/f;Lq5/d;)V

    const/4 v11, 0x3

    const/4 v15, 0x0

    move-object v7, v2

    move-object/from16 v16, v12

    move-object v12, v15

    invoke-static/range {v7 .. v12}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-object/from16 v12, v16

    move/from16 v7, v22

    goto :goto_1

    :cond_5
    new-array v2, v13, [B

    move-object/from16 v7, v21

    :goto_2
    add-int/2addr v3, v6

    int-to-byte v3, v3

    iput-object v14, v0, Ll6/k$a;->l:Ljava/lang/Object;

    iput-object v7, v0, Ll6/k$a;->g:Ljava/lang/Object;

    iput-object v2, v0, Ll6/k$a;->h:Ljava/lang/Object;

    iput v13, v0, Ll6/k$a;->i:I

    iput v3, v0, Ll6/k$a;->j:I

    iput v6, v0, Ll6/k$a;->k:I

    invoke-interface {v7, v0}, Lk6/v;->e(Lq5/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, v7

    move-object v9, v14

    move v7, v3

    move v3, v13

    :goto_3
    invoke-static {v10}, Lk6/j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo5/z;

    if-nez v10, :cond_7

    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0

    :cond_7
    invoke-virtual {v10}, Lo5/z;->a()I

    move-result v11

    aget-object v12, v9, v11

    invoke-virtual {v10}, Lo5/z;->b()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    sget-object v10, Ll6/s;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v12, v10, :cond_8

    add-int/lit8 v3, v3, -0x1

    :cond_8
    aget-byte v10, v2, v11

    if-ne v10, v7, :cond_9

    goto :goto_4

    :cond_9
    int-to-byte v10, v7

    aput-byte v10, v2, v11

    invoke-interface {v8}, Lk6/v;->i()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lk6/j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo5/z;

    if-nez v10, :cond_7

    :goto_4
    if-nez v3, :cond_b

    iget-object v10, v0, Ll6/k$a;->n:Ly5/a;

    invoke-interface {v10}, Ly5/a;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    if-nez v10, :cond_a

    iget-object v10, v0, Ll6/k$a;->o:Ly5/q;

    iget-object v11, v0, Ll6/k$a;->p:Lkotlinx/coroutines/flow/f;

    iput-object v9, v0, Ll6/k$a;->l:Ljava/lang/Object;

    iput-object v8, v0, Ll6/k$a;->g:Ljava/lang/Object;

    iput-object v2, v0, Ll6/k$a;->h:Ljava/lang/Object;

    iput v3, v0, Ll6/k$a;->i:I

    iput v7, v0, Ll6/k$a;->j:I

    iput v5, v0, Ll6/k$a;->k:I

    invoke-interface {v10, v11, v9, v0}, Ly5/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_b

    return-object v1

    :cond_a
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe

    const/16 v17, 0x0

    move-object v11, v9

    move-object v12, v10

    invoke-static/range {v11 .. v17}, Lo5/c;->e([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    iget-object v11, v0, Ll6/k$a;->o:Ly5/q;

    iget-object v12, v0, Ll6/k$a;->p:Lkotlinx/coroutines/flow/f;

    iput-object v9, v0, Ll6/k$a;->l:Ljava/lang/Object;

    iput-object v8, v0, Ll6/k$a;->g:Ljava/lang/Object;

    iput-object v2, v0, Ll6/k$a;->h:Ljava/lang/Object;

    iput v3, v0, Ll6/k$a;->i:I

    iput v7, v0, Ll6/k$a;->j:I

    iput v4, v0, Ll6/k$a;->k:I

    invoke-interface {v11, v12, v10, v0}, Ly5/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_b

    return-object v1

    :cond_b
    move v13, v3

    move v3, v7

    move-object v7, v8

    move-object v14, v9

    goto/16 :goto_2
.end method
