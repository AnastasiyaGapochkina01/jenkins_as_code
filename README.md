Плейбук для раскатки jenkins в docker с нуля.

Vars:
image - registry + имя контейнера (jenkins)
tag - задается через --extra-vars при запуске плейбука

Чтобы не раздувать jenkins.yaml секцией jobs, джобы генерируются из файлов формата .xml, которые подтягиваются из gitlab (добавлены сюда в репу для наглядности) в папку /opt/jenkins на хостовой машине (монтируется внутрь контейнера в том числе для дальнейшего добавления джоб без пересборки). Логика работы джоб описывается в пайплайнах.

Пример запуска:
```
ansible-playbook -i inventory main.yaml  --extra-vars "tag=main-2" --ask-vault-pass
```
