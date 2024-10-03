.class public final Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/b;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final a:Ln5/e;

.field private final b:Ln5/e;

.field private final c:Ln5/e;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ln0/a$b;->g:Ln0/a$b;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Ln0/a;->a:Ln5/e;

    sget-object v0, Ln0/a$c;->g:Ln0/a$c;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Ln0/a;->b:Ln5/e;

    sget-object v0, Ln0/a$a;->g:Ln0/a$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Ln0/a;->c:Ln5/e;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 0

    iget-object p0, p0, Ln0/a;->a:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
