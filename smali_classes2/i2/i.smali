.class public final Li2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/i$a;
    }
.end annotation


# static fields
.field public static final a:Li2/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li2/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li2/i$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Li2/i;->a:Li2/i$a;

    return-void
.end method