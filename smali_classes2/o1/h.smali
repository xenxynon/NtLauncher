.class public final Lo1/h;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/t<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ll1/u;


# instance fields
.field private final a:Ll1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo1/h$a;

    invoke-direct {v0}, Lo1/h$a;-><init>()V

    sput-object v0, Lo1/h;->b:Ll1/u;

    return-void
.end method

.method constructor <init>(Ll1/e;)V
    .locals 0

    invoke-direct {p0}, Ll1/t;-><init>()V

    iput-object p1, p0, Lo1/h;->a:Ll1/e;

    return-void
.end method


# virtual methods
.method public b(Ls1/a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    move-result-object v0

    sget-object v1, Lo1/h$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p1}, Ls1/a;->B()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Ls1/a;->u()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Ls1/a;->w()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Ls1/a;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance v0, Ln1/h;

    invoke-direct {v0}, Ln1/h;-><init>()V

    invoke-virtual {p1}, Ls1/a;->b()V

    :goto_0
    invoke-virtual {p1}, Ls1/a;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ls1/a;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lo1/h;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ls1/a;->l()V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ls1/a;->a()V

    :goto_1
    invoke-virtual {p1}, Ls1/a;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lo1/h;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls1/a;->k()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ls1/c;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    return-void

    :cond_0
    iget-object p0, p0, Lo1/h;->a:Ll1/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll1/e;->l(Ljava/lang/Class;)Ll1/t;

    move-result-object p0

    instance-of v0, p0, Lo1/h;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ls1/c;->f()Ls1/c;

    invoke-virtual {p1}, Ls1/c;->l()Ls1/c;

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    return-void
.end method
