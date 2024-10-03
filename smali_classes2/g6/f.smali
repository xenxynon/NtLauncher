.class final Lg6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg6/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly5/a;Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/a<",
            "+TT;>;",
            "Ly5/l<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    const-string v0, "getInitialValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/f;->a:Ly5/a;

    iput-object p2, p0, Lg6/f;->b:Ly5/l;

    return-void
.end method

.method public static final synthetic b(Lg6/f;)Ly5/a;
    .locals 0

    iget-object p0, p0, Lg6/f;->a:Ly5/a;

    return-object p0
.end method

.method public static final synthetic c(Lg6/f;)Ly5/l;
    .locals 0

    iget-object p0, p0, Lg6/f;->b:Ly5/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lg6/f$a;

    invoke-direct {v0, p0}, Lg6/f$a;-><init>(Lg6/f;)V

    return-object v0
.end method
