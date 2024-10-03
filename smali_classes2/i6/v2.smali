.class public final Li6/v2;
.super Li6/i0;
.source "SourceFile"


# static fields
.field public static final g:Li6/v2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/v2;

    invoke-direct {v0}, Li6/v2;-><init>()V

    sput-object v0, Li6/v2;->g:Li6/v2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li6/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lq5/g;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Li6/y2;->h:Li6/y2$a;

    invoke-interface {p1, p0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    check-cast p0, Li6/y2;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Li6/y2;->g:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDispatchNeeded(Lq5/g;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public limitedParallelism(I)Li6/i0;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "limitedParallelism is not supported for Dispatchers.Unconfined"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Unconfined"

    return-object p0
.end method
