.class public final Li6/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/b0;

.field public static final b:Lkotlinx/coroutines/internal/b0;

.field private static final c:Lkotlinx/coroutines/internal/b0;

.field private static final d:Lkotlinx/coroutines/internal/b0;

.field private static final e:Lkotlinx/coroutines/internal/b0;

.field private static final f:Li6/e1;

.field private static final g:Li6/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Li6/e2;->a:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Li6/e2;->b:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Li6/e2;->c:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Li6/e2;->d:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Li6/e2;->e:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Li6/e1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li6/e1;-><init>(Z)V

    sput-object v0, Li6/e2;->f:Li6/e1;

    new-instance v0, Li6/e1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li6/e1;-><init>(Z)V

    sput-object v0, Li6/e2;->g:Li6/e1;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/b0;
    .locals 1

    sget-object v0, Li6/e2;->a:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/b0;
    .locals 1

    sget-object v0, Li6/e2;->c:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final synthetic c()Li6/e1;
    .locals 1

    sget-object v0, Li6/e2;->g:Li6/e1;

    return-object v0
.end method

.method public static final synthetic d()Li6/e1;
    .locals 1

    sget-object v0, Li6/e2;->f:Li6/e1;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/b0;
    .locals 1

    sget-object v0, Li6/e2;->e:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/b0;
    .locals 1

    sget-object v0, Li6/e2;->d:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Li6/q1;

    if-eqz v0, :cond_0

    new-instance v0, Li6/r1;

    check-cast p0, Li6/q1;

    invoke-direct {v0, p0}, Li6/r1;-><init>(Li6/q1;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Li6/r1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Li6/r1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Li6/r1;->a:Li6/q1;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    return-object p0
.end method
