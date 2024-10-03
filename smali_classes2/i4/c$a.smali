.class final Li4/c$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Li4/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Li4/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li4/c$a;

    invoke-direct {v0}, Li4/c$a;-><init>()V

    sput-object v0, Li4/c$a;->g:Li4/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Li4/c;
    .locals 1

    new-instance p0, Li4/c;

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Li4/c;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li4/c$a;->a()Li4/c;

    move-result-object p0

    return-object p0
.end method
