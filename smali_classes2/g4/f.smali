.class public final synthetic Lg4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lg4/g;

.field public final synthetic h:[Lg4/c;


# direct methods
.method public synthetic constructor <init>(Lg4/g;[Lg4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/f;->g:Lg4/g;

    iput-object p2, p0, Lg4/f;->h:[Lg4/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg4/f;->g:Lg4/g;

    iget-object p0, p0, Lg4/f;->h:[Lg4/c;

    invoke-static {v0, p0}, Lg4/g;->a(Lg4/g;[Lg4/c;)V

    return-void
.end method
