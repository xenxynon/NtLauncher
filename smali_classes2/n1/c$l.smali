.class Ln1/c$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln1/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ln1/i;
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
.field final synthetic a:Ln1/c;


# direct methods
.method constructor <init>(Ln1/c;)V
    .locals 0

    iput-object p1, p0, Ln1/c$l;->a:Ln1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-object p0
.end method
