.class public final synthetic Lg2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic g:Lf6/e;


# direct methods
.method public synthetic constructor <init>(Lf6/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/j;->g:Lf6/e;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lg2/j;->g:Lf6/e;

    invoke-static {p0}, Lg2/i$g;->a(Lf6/e;)V

    return-void
.end method