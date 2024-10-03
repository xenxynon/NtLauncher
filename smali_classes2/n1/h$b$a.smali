.class Ln1/h$b$a;
.super Ln1/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln1/h$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/h<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic k:Ln1/h$b;


# direct methods
.method constructor <init>(Ln1/h$b;)V
    .locals 0

    iput-object p1, p0, Ln1/h$b$a;->k:Ln1/h$b;

    iget-object p1, p1, Ln1/h$b;->g:Ln1/h;

    invoke-direct {p0, p1}, Ln1/h$d;-><init>(Ln1/h;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ln1/h$d;->a()Ln1/h$e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ln1/h$b$a;->b()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
