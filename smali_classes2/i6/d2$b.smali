.class final Li6/d2$b;
.super Li6/c2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final k:Li6/d2;

.field private final l:Li6/d2$c;

.field private final m:Li6/u;

.field private final n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li6/d2;Li6/d2$c;Li6/u;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Li6/c2;-><init>()V

    iput-object p1, p0, Li6/d2$b;->k:Li6/d2;

    iput-object p2, p0, Li6/d2$b;->l:Li6/d2$c;

    iput-object p3, p0, Li6/d2$b;->m:Li6/u;

    iput-object p4, p0, Li6/d2$b;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li6/d2$b;->z(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Li6/d2$b;->k:Li6/d2;

    iget-object v0, p0, Li6/d2$b;->l:Li6/d2$c;

    iget-object v1, p0, Li6/d2$b;->m:Li6/u;

    iget-object p0, p0, Li6/d2$b;->n:Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Li6/d2;->I(Li6/d2;Li6/d2$c;Li6/u;Ljava/lang/Object;)V

    return-void
.end method
