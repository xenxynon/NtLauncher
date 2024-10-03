.class final Lo1/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/p;
.implements Ll1/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lo1/l;


# direct methods
.method private constructor <init>(Lo1/l;)V
    .locals 0

    iput-object p1, p0, Lo1/l$b;->a:Lo1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo1/l;Lo1/l$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lo1/l$b;-><init>(Lo1/l;)V

    return-void
.end method
