.class public final synthetic Lj4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lj4/g;

.field public final synthetic h:Lj4/g;


# direct methods
.method public synthetic constructor <init>(Lj4/g;Lj4/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/d;->g:Lj4/g;

    iput-object p2, p0, Lj4/d;->h:Lj4/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lj4/d;->g:Lj4/g;

    iget-object p0, p0, Lj4/d;->h:Lj4/g;

    invoke-static {v0, p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->d(Lj4/g;Lj4/g;)V

    return-void
.end method
