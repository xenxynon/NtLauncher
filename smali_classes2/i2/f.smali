.class public final Li2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/f$a;
    }
.end annotation


# static fields
.field public static final a:Li2/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li2/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li2/f$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Li2/f;->a:Li2/f$a;

    return-void
.end method
