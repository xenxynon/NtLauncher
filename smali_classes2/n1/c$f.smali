.class Ln1/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln1/c;->a(Lr1/a;)Ln1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln1/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ll1/f;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Ln1/c;


# direct methods
.method constructor <init>(Ln1/c;Ll1/f;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Ln1/c$f;->c:Ln1/c;

    iput-object p2, p0, Ln1/c$f;->a:Ll1/f;

    iput-object p3, p0, Ln1/c$f;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ln1/c$f;->a:Ll1/f;

    iget-object p0, p0, Ln1/c$f;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, p0}, Ll1/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
