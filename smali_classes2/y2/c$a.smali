.class public final Ly2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/c$a$a;
    }
.end annotation


# static fields
.field public static final a:Ly2/c$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/c$a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ly2/c$a;->a:Ly2/c$a$a;

    return-void
.end method
