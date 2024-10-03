.class public final synthetic Lg0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lg0/b$a;


# direct methods
.method public synthetic constructor <init>(Lg0/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/a;->g:Lg0/b$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lg0/a;->g:Lg0/b$a;

    invoke-static {p0}, Lg0/b$a;->a(Lg0/b$a;)V

    return-void
.end method
