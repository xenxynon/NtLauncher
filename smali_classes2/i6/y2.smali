.class public final Li6/y2;
.super Lq5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/y2$a;
    }
.end annotation


# static fields
.field public static final h:Li6/y2$a;


# instance fields
.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li6/y2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li6/y2$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Li6/y2;->h:Li6/y2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Li6/y2;->h:Li6/y2$a;

    invoke-direct {p0, v0}, Lq5/a;-><init>(Lq5/g$c;)V

    return-void
.end method
