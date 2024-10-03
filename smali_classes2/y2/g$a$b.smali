.class final Ly2/g$a$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly2/g$a;->e(Ljava/lang/ClassLoader;Ljava/lang/String;)Ly2/g$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/ClassLoader;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ly2/g$f;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final g:Ly2/g$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/g$a$b;

    invoke-direct {v0}, Ly2/g$a$b;-><init>()V

    sput-object v0, Ly2/g$a$b;->g:Ly2/g$a$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ClassLoader;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ly2/g$f;",
            ">;"
        }
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ly2/g$a$b;->a(Ljava/lang/ClassLoader;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
