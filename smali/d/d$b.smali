.class public final Ld/d$b;
.super Lt1/k$b;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k$b<",
        "Ld/d;",
        "Ld/d$b;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Ld/d;->a()Ld/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lt1/k$b;-><init>(Lt1/k;)V

    return-void
.end method

.method synthetic constructor <init>(Ld/d$a;)V
    .locals 0

    invoke-direct {p0}, Ld/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b$b;)Ld/d$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/d;

    invoke-static {v0, p1}, Ld/d;->c(Ld/d;Ld/b$b;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ld/d$b;
    .locals 1

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    check-cast v0, Ld/d;

    invoke-static {v0, p1}, Ld/d;->b(Ld/d;Ljava/lang/String;)V

    return-object p0
.end method
