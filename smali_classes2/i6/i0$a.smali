.class public final Li6/i0$a;
.super Lq5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq5/b<",
        "Lq5/e;",
        "Li6/i0;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    sget-object v0, Lq5/e;->f:Lq5/e$b;

    sget-object v1, Li6/i0$a$a;->g:Li6/i0$a$a;

    invoke-direct {p0, v0, v1}, Lq5/b;-><init>(Lq5/g$c;Ly5/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Li6/i0$a;-><init>()V

    return-void
.end method