.class final Ld4/c$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld4/c;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lb4/a;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ld4/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld4/c$b;

    invoke-direct {v0}, Ld4/c$b;-><init>()V

    sput-object v0, Ld4/c$b;->g:Ld4/c$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lb4/a;)V
    .locals 0

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb4/a;->A()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb4/a;

    invoke-virtual {p0, p1}, Ld4/c$b;->a(Lb4/a;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
