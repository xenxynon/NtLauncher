.class final Lkotlinx/coroutines/scheduling/m;
.super Li6/i0;
.source "SourceFile"


# static fields
.field public static final g:Lkotlinx/coroutines/scheduling/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/m;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/m;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/m;->g:Lkotlinx/coroutines/scheduling/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li6/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lq5/g;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Lkotlinx/coroutines/scheduling/c;->m:Lkotlinx/coroutines/scheduling/c;

    sget-object p1, Lkotlinx/coroutines/scheduling/l;->g:Lkotlinx/coroutines/scheduling/i;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/f;->y(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    return-void
.end method

.method public dispatchYield(Lq5/g;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Lkotlinx/coroutines/scheduling/c;->m:Lkotlinx/coroutines/scheduling/c;

    sget-object p1, Lkotlinx/coroutines/scheduling/l;->g:Lkotlinx/coroutines/scheduling/i;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/f;->y(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    return-void
.end method
