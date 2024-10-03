.class public interface abstract Lg0/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/b$d$a;
    }
.end annotation


# static fields
.field public static final a:Lg0/b$d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg0/b$d$a;->a:Lg0/b$d$a;

    sput-object v0, Lg0/b$d;->a:Lg0/b$d$a;

    return-void
.end method

.method public static synthetic a(Lg0/b$d;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lg0/b$d;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onLaunchAnimationCancelled"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/view/View;Ljava/lang/Integer;)Lg0/b$d;
    .locals 1

    sget-object v0, Lg0/b$d;->a:Lg0/b$d$a;

    invoke-virtual {v0, p0, p1}, Lg0/b$d$a;->a(Landroid/view/View;Ljava/lang/Integer;)Lg0/b$d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isBelowAnimatingWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method
