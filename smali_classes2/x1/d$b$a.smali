.class public final Lx1/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/d$b$a;->a:Landroid/view/View;

    iput-object p2, p0, Lx1/d$b$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lx1/d$b$a;->a:Landroid/view/View;

    return-object p0
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lx1/d$b$a;->b:Landroid/view/View;

    return-object p0
.end method
